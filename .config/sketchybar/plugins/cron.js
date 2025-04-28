#!/opt/homebrew/bin/node

import { createReadStream, rmSync } from "fs";
import { createInterface } from "readline";
import { execSync } from "child_process";

const ITEM_NAME = process.env.NAME;

rmSync("data.json", { force: true });

const INDEXDB_LOCATION =
  "/Users/manishprivet/Library/Application Support/Notion Calendar/IndexedDB";

const execute = (COMMAND) =>
  execSync(COMMAND, (error) => {
    if (error) {
      console.error(`exec error: ${error}`);
      return;
    }
  });

const formatDuration = (time) => {
  let duration = time;
  if (duration > 60 * 60) {
    duration = Math.floor(duration / 60 / 60) + "h";
  } else if (duration > 120) {
    duration = Math.floor(duration / 60) + "m";
  } else {
    duration = "now";
  }

  return duration;
};

const truncateText = (text, length) => {
  if (text.length <= length) {
    return text;
  }

  return text.substr(0, length) + "\u2026";
};

// Set Status to Loading

const SKETCHYBAR_COMMAND = `sketchybar --set ${ITEM_NAME} \
  label="..." \
  icon=󰢠 \
  click_script="" \
`;

execute(SKETCHYBAR_COMMAND);

const python = execute("python3 -m site --user-base").toString().trim();

const JSON_EXPORT_COMMAND = `${python}/bin/dfindexeddb db \
  -s "${INDEXDB_LOCATION}/https_calendar.notion.so_0.indexeddb.leveldb" \
  --format chrome \
  --use_manifest \
  -o jsonl \
  >> data.json`;

execute(JSON_EXPORT_COMMAND);

var rd = createInterface({
  input: createReadStream(`data.json`),
  console: false,
});

const events = [];

rd.on("line", function (line) {
  const data = JSON.parse(line);

  if (data.value?.value?.kind === "calendar#event") {
    const summary = data.value.value.summary;

    let fullDayEvent = false;

    if (!data.value.value.start.dateTime) {
      data.value.value.start.dateTime = new Date(
        data.value.value.start.date,
      ).toISOString();
      fullDayEvent = true;
    }

    if (!data.value.value.end.dateTime) {
      data.value.value.end.dateTime = new Date(
        data.value.value.end.date,
      ).toISOString();
    }

    const startTime = data.value.value.start.dateTime.replace(
      /([+-][0-9][0-9]):([0-9][0-9])$/,
      "$1$2",
    );
    const endTime = data.value.value.end.dateTime.replace(
      /([+-][0-9][0-9]):([0-9][0-9])$/,
      "$1$2",
    );

    // Duration by difference of START and END
    const duration = (new Date(endTime) - new Date(startTime)) / 1000;

    const timeGap = (new Date(startTime) - new Date()) / 1000;
    if (
      !fullDayEvent &&
      new Date() < new Date(startTime) &&
      timeGap < 60 * 60 * 3 &&
      !Boolean(data.recovered)
    )
      events.push({
        summary,
        startTime,
        endTime,
        duration,
        fullDayEvent,
        meet: data.value.value.hangoutLink,
      });
  }
});

rd.on("close", function () {
  if (events.length === 0) {
    const SKETCHYBAR_COMMAND = `sketchybar --set ${ITEM_NAME} \
      label="No upcoming meetings" \
      icon=󰢠 \
      click_script="" \
    `;

    execute(SKETCHYBAR_COMMAND);

    return;
  }

  const meeting = events.sort((a, b) => {
    return new Date(a.startTime) - new Date(b.startTime);
  })[0];

  const timeGap = formatDuration(
    (new Date(meeting.startTime) - new Date()) / 1000,
  );

  const duration = formatDuration(meeting.duration);

  const SKETCHYBAR_COMMAND = `sketchybar --set ${ITEM_NAME} \
    label="${truncateText(meeting.summary, 15)} (${duration}) in ${timeGap}" \
    ${meeting.meet ? `icon=":zoom:"` : `icon=􀎨`} \
    ${meeting.meet ? `click_script="open -n ${meeting.meet}"` : ``}
  `;

  execute(SKETCHYBAR_COMMAND);
});
