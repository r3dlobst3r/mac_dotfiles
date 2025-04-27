#!/bin/bash

sketchybar --add item cron right \
  --set cron icon=󰢠 \
  label="..." \
  display=1 \
  update_freq=120 \
  icon.font="sketchybar-app-font:Regular:16.0" \
  script="$PLUGIN_DIR/cron.js"
