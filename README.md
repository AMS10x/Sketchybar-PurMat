# SketchyBar Config

A custom dark-purple SketchyBar setup for macOS with yabai integration.

## Features
- yabai workspace indicators with per-app icons
- Now Playing media widget (album info, play/pause/skip controls)
- Weather widget
- Live crypto prices (BTC, ETH, TON)
- Volume control with device picker
- Battery, clock with dual timezone (local + Amsterdam)

## Requirements
- [yabai](https://github.com/koekeishiya/yabai)
- [SketchyBar](https://github.com/FelixKratz/SketchyBar)
- Hack Nerd Font
- `nowplaying-cli`, `switchaudio-osx` (via Homebrew)

## Install
```bash
git clone https://github.com/YOUR_USERNAME/sketchybar-config.git
cd sketchybar-config
./install.sh
```

## Screenshot
![bar](screenshot.png)

## Customize
Edit `sketchybarrc` for layout/colors, and individual scripts in `plugins/` for widget behavior.
