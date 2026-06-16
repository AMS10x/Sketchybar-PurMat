#!/bin/bash
PERCENT=$(pmset -g batt | grep -Eo "\d+%" | head -1)
CHARGING=$(pmset -g batt | grep -c "AC Power")
[ "$CHARGING" -gt 0 ] && ICON="󰂄" || ICON="󰁹"
sketchybar --set battery icon="$ICON" label="$PERCENT"
