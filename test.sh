#!/bin/bash


icon=""
aerospace list-windows --workspace W --json

IFS=$'\n'; for sid in $(aerospace list-windows --workspace W --json | jq -r "map ( .\"app-name\" ) | .[]"); do
  echo "$sid"
  icon+=$(./.config/sketchybar/plugins/icon_map_fn.sh "$sid")
  icon+=" "
done

echo "$icon"
