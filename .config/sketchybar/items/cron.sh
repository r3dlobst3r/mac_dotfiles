#!/bin/bash

sketchybar --add item cron right \
  --set cron icon=󰢠 \
  label="..." \
  display=1 \
  update_freq=120 \
  icon.font="Hack Nerd Font:Bold:17.0" \
  script="$PLUGIN_DIR/cron.js"
