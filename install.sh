#!/bin/bash
set -e

echo "Installing dependencies..."
brew install sketchybar
brew install yabai
brew install --cask font-hack-nerd-font
brew install nowplaying-cli
brew install switchaudio-osx

echo "Copying config..."
mkdir -p ~/.config/sketchybar
cp sketchybarrc ~/.config/sketchybar/sketchybarrc
cp -r plugins ~/.config/sketchybar/plugins
chmod +x ~/.config/sketchybar/plugins/*

echo "Starting sketchybar..."
brew services restart sketchybar

echo "Done! Don't forget to hide your macOS menu bar:"
echo "System Settings → Control Centre → Automatically hide and show the menu bar → Always"
