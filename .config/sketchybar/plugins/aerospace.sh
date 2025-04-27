#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh
source "$CONFIG_DIR/colors.sh"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set "$NAME" background.drawing=on \
    background.color="$ACCENT_COLOR" \
    label.color="$BACKGROUND" \
    icon.color="$BACKGROUND"
else
  sketchybar --set "$NAME" background.drawing=off \
    label.color="$ACCENT_COLOR" \
    icon.color="$ACCENT_COLOR" \
    background.color="$BAR_COLOR"
fi

icons=""

IFS=$'\n'
for sid in $(aerospace list-windows --workspace "$1" --json | jq -r "map ( .\"app-name\" ) | .[]"); do
  icons+=$("$CONFIG_DIR/plugins/icon_map_fn.sh" "$sid")
  icons+="  "
done

# When icons is empty, set it to " "
if [ -z "$icons" ]; then
  if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set "$NAME" label="$icons" drawing=on
  else
    sketchybar --set "$NAME" drawing=off
  fi
else
  sketchybar --set "$NAME" label="$icons" drawing=on
fi
