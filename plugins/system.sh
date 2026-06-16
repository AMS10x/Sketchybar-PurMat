#!/bin/bash
CPU=$(top -l 1 | grep "CPU usage" | awk '{print $3}' | tr -d '%')
RAM=$(vm_stat | awk '/Pages active/ {a=$3} /Pages wired/ {w=$4} END {printf "%.1f", (a+w)*4096/1073741824}')
sketchybar --set system label="CPU ${CPU:-0}%  RAM ${RAM:-0}G"
