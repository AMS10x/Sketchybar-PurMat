# SketchyBar Config

A custom dark-purple SketchyBar setup for macOS, built around yabai window management.

![bar](screenshot.png)

## Features

- **Workspaces** — yabai space indicators showing the active app's icon, click to jump to a space
- **Front app** — currently focused application name
- **Weather** — current temperature and condition
- **Now Playing** — track title/artist, play/pause/skip controls (works with Spotify, Apple Music, kew, etc. via MediaRemote)
- **Live crypto prices** — BTC, ETH, TON (via Binance public API)
- **Volume control** — scroll to adjust, click to open Control Center, right-click to mute
- **Battery** indicator
- **Dual clock** — local time + Amsterdam time

## Dependencies

| Tool | Purpose | Install |
|---|---|---|
| [yabai](https://github.com/koekeishiya/yabai) | tiling window manager | `brew install koekeishiya/formulae/yabai` |
| [SketchyBar](https://github.com/FelixKratz/SketchyBar) | the bar itself | `brew install sketchybar` |
| Hack Nerd Font | icons | `brew install --cask font-hack-nerd-font` |
| [nowplaying-cli](https://github.com/kirtan-shah/nowplaying-cli) | media info + controls | `brew install nowplaying-cli` |
| [SwitchAudioSource](https://github.com/deweller/switchaudio-osx) | audio device list | `brew install switchaudio-osx` |
| `curl`, `python3`, `osascript` | API calls + volume control | built into macOS |

All of the above are installed automatically by `install.sh`.

## Install

```bash
git clone https://github.com/YOUR_USERNAME/sketchybar-config.git
cd sketchybar-config
./install.sh
```

Then hide the native macOS menu bar:
**System Settings → Control Centre → Automatically hide and show the menu bar → Always**

## Customize

- Layout, colors, spacing → edit `sketchybarrc`
- Widget behavior/data → edit individual scripts in `plugins/`

## License

MIT — do whatever you want with it.
