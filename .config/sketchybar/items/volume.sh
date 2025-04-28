#!/bin/bash

sketchybar --add item volume right \
  --set volume script="$PLUGIN_DIR/volume.sh" \
  update_freq=10 \
  --subscribe volume volume_change
