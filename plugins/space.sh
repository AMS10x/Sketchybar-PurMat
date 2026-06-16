#!/bin/bash
SPACE=$1
APP=$(yabai -m query --windows --space $SPACE 2>/dev/null | python3 -c "
import sys, json
wins = json.load(sys.stdin)
focused = next((w for w in wins if w.get('has-focus')), wins[0] if wins else None)
print(focused['app'] if focused else '')
" 2>/dev/null)
case "$APP" in
  "Ghostty"|"Terminal"|"iTerm2") ICON="󰆍" ;;
  "Safari")                       ICON="󰀹" ;;
  "Google Chrome"|"Chrome")       ICON="󰊯" ;;
  "Firefox")                      ICON="󰈹" ;;
  "Code"|"VSCodium")              ICON="󰨞" ;;
  "Finder")                       ICON="󰀶" ;;
  "Slack")                        ICON="󰒱" ;;
  "Telegram")                     ICON="󰔁" ;;
  "Discord")                      ICON="󰙯" ;;
  "Spotify"|"Music")              ICON="󰝚" ;;
  "Figma")                        ICON="󰉋" ;;
  "Claude")                       ICON="󰚩" ;;
  "WezTerm")                      ICON="󰆍" ;;
  *)                              ICON="$SPACE" ;;
esac
sketchybar --set space_$SPACE icon="$ICON"
