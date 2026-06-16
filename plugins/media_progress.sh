#!/bin/bash
ELAPSED=$(nowplaying-cli get elapsedTime 2>/dev/null | tail -1)
DURATION=$(nowplaying-cli get duration 2>/dev/null | tail -1)

if [ -z "$ELAPSED" ] || [ -z "$DURATION" ] || \
   [ "$DURATION" = "null" ] || [ "$ELAPSED" = "null" ] || \
   [ "$DURATION" = "0" ]; then
  sketchybar --set media_progress label="╌╌╌╌╌╌╌╌╌╌"
  exit 0
fi

BAR=$(python3 -c "
elapsed = float('$ELAPSED')
duration = float('$DURATION')
pct = min(int(elapsed/duration*10), 10)
print('━' * pct + '╌' * (10 - pct))
" 2>/dev/null)

sketchybar --set media_progress label="${BAR:-╌╌╌╌╌╌╌╌╌╌}"
