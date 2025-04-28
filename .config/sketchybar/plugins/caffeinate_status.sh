#!/bin/bash

CAFFINATE_ID=$(pmset -g assertions | grep "caffeinate" | awk '{print $2}' | cut -d '(' -f1 | head -n 1)

if [ -z "$CAFFINATE_ID" ]; then
  sketchybar --set "$NAME" icon=
else
  sketchybar --set "$NAME" icon=
fi
