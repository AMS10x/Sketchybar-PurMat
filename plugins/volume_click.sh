#!/bin/bash
case "$BUTTON" in
  "left") open -a "Control Center" ;;
  "right") osascript -e 'set volume output muted not (output muted of (get volume settings))' ;;
esac
case "$SCROLL_DIRECTION" in
  "up")   osascript -e 'set volume output volume ((output volume of (get volume settings)) + 5)' ;;
  "down") osascript -e 'set volume output volume ((output volume of (get volume settings)) - 5)' ;;
esac
$HOME/.config/sketchybar/plugins/volume.sh
