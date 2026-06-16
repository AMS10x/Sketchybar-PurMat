#!/bin/bash
WEATHER=$(curl -s "wttr.in/?format=%c%t" 2>/dev/null)
sketchybar --set weather label="$WEATHER"
