#!/bin/bash
VOL=$(osascript -e 'output volume of (get volume settings)')
MUTED=$(osascript -e 'output muted of (get volume settings)')
if [ "$MUTED" = "true" ]; then ICON="🔇"
elif [ "$VOL" -lt 30 ]; then ICON="🔈"
elif [ "$VOL" -lt 70 ]; then ICON="🔉"
else ICON="🔊"
fi
sketchybar --set volume icon="$ICON" label="${VOL}%"
