#!/bin/bash
set -e

echo "==> Checking Homebrew..."
if ! command -v brew &> /dev/null; then
  echo "Homebrew not found. Install it first: https://brew.sh"
  exit 1
fi

echo "==> Installing dependencies..."
brew install sketchybar
brew install koekeishiya/formulae/yabai
brew install --cask font-hack-nerd-font
brew install nowplaying-cli
brew install switchaudio-osx

echo "==> Copying config..."
mkdir -p ~/.config/sketchybar
cp sketchybarrc ~/.config/sketchybar/sketchybarrc
cp -r plugins ~/.config/sketchybar/plugins
chmod +x ~/.config/sketchybar/plugins/*

echo "==> Starting yabai (if not already running)..."
brew services start yabai 2>/dev/null || true

echo "==> Starting sketchybar..."
brew services restart sketchybar

echo ""
echo "✅ Done!"
echo ""
echo "Next steps:"
echo "1. Hide the native macOS menu bar:"
echo "   System Settings → Control Centre → Automatically hide and show the menu bar → Always"
echo "2. If yabai needs SIP partially disabled for full features, see:"
echo "   https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection"
