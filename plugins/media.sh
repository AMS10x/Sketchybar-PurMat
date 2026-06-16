#!/bin/bash
STATE=$(nowplaying-cli get playbackRate)
TITLE=$(nowplaying-cli get title)
ARTIST=$(nowplaying-cli get artist)

if [ "$TITLE" = "null" ] || [ -z "$TITLE" ]; then
  sketchybar --set media label="Nothing Playing"
  sketchybar --set media.play icon="▶" icon.color=0xFF98c379
  exit 0
fi

if [ "$STATE" = "1" ]; then
  sketchybar --set media.play icon="⏸" icon.color=0xFFe5c07b
else
  sketchybar --set media.play icon="▶" icon.color=0xFF98c379
fi

DISPLAY=$(echo "$TITLE — $ARTIST" | cut -c1-39)
sketchybar --set media label="$DISPLAY"
