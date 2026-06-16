#!/bin/bash
LOCAL=$(date "+%d.%m  %H:%M")
AMS=$(TZ="Europe/Amsterdam" date "+%H:%M")
sketchybar --set clock label="$LOCAL  AMS $AMS"
