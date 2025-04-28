#!/bin/bash

CAFFINATE_ID=$(pmset -g assertions | grep "caffeinate" | awk '{print $2}' | cut -d '(' -f1 | head -n 1)

if [ -z "$CAFFINATE_ID" ]; then
  caffeinate -id &
  sketchybar --set "$NAME" icon=
else
  kill -9 "$CAFFINATE_ID"
  sketchybar --set "$NAME" icon=
fi
