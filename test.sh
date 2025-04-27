#!/bin/bash

for sid in $(aerospace list-workspaces --all); do
  monitor=$(aerospace list-windows --workspace "$sid" --format "%{monitor-appkit-nsscreen-screens-id}")
  echo "$sid" "$monitor"
done

# icon=""
# aerospace list-windows --workspace W --json
#
# IFS=$'\n'
# for sid in $(aerospace list-windows --workspace W --json | jq -r "map ( .\"app-name\" ) | .[]"); do
#   echo "$sid"
#   icon+=$(./.config/sketchybar/plugins/icon_map_fn.sh "$sid")
#   icon+=" "
# done
#
# echo "$icon"
