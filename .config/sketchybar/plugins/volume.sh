#!/bin/bash

# The volume_change event supplies a $INFO variable in which the current volume
# percentage is passed to the script.
VOLUME=$(osascript -e 'output volume of (get volume settings)')

if [ "$SENDER" = "volume_change" ]; then
  VOLUME=$INFO

elif command -v betterdisplaycli 2>&1 >/dev/null; then
  if [ "$VOLUME" = "missing value" ]; then
    ALTERNATE_VOLUME=$(betterdisplaycli get -feature=volume -value -displayWithMainStatus | bc)

    MEGA=100

    if [[ $ALTERNATE_VOLUME =~ "." ]]; then
      VOLUME=$(bc -l <<<"${ALTERNATE_VOLUME}*${MEGA}" | bc)
      VOLUME=$(echo "$VOLUME" | cut -d. -f1)
    fi

    MUTE=$(betterdisplaycli get -feature=mute -value -displayWithMainStatus)

    if [ "$MUTE" = "on" ]; then
      VOLUME="0"
    fi
  fi
fi

case $VOLUME in
[6-9][0-9] | 100)
  ICON="􀊩"
  ;;
[3-5][0-9])
  ICON="􀊥"
  ;;
[1-9] | [1-2][0-9])
  ICON="􀊡"
  ;;
*) ICON="􀊣" ;;
esac

sketchybar --set "$NAME" icon="$ICON" label="$VOLUME%"
