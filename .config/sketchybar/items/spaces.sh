#!/bin/bash

arr["1"]="Calendar"

arr["2"]="Ghostty"

arr["3"]="Google Chrome"

arr["4"]="Slack"

arr["5"]="Safari"

arr["W"]="WhatsApp"

for sid in $(aerospace list-workspaces --all); do
  sketchybar --add item space."$sid" left \
    --subscribe space."$sid" aerospace_workspace_change \
    --set space."$sid" \
    icon="$("$CONFIG_DIR/plugins/icon_map_fn.sh" "${arr[${sid}]}")" \
    icon.padding_left=7 \
    icon.padding_right=7 \
    background.drawing=on \
    icon.font="sketchybar-app-font:Regular:16.0" \
    background.color="$ACCENT_COLOR" \
    icon.color="$BACKGROUND" \
    label.color="$BACKGROUND" \
    background.corner_radius=5 \
    background.height=25 \
    label.drawing=off \
    click_script="aerospace workspace $sid" \
    script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done

sketchybar --add item space_separator left \
  --set space_separator icon="|" \
  icon.color="$ACCENT_COLOR" \
  icon.padding_left=4 \
  icon.padding_right=15 \
  label.drawing=off \
  background.drawing=off
