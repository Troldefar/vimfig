#!/bin/bash

rm ~/.vimrc && mv .vimrc ~/ 

gsettings set org.gnome.desktop.interface monospace-font-name 'FiraCode Nerd Font 12'

# Setup std lsps

sudo apt-get update

sudo apt-get install -y ripgrep npm composer ccls clangd

npm install -g typescript-language-server typescript

npm install -g intelephense

# Some font
# Change to what u like

FONT_DIR="$HOME/.local/share/fonts"
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip"
FONT_NAME="FiraCode Nerd Font"

mkdir -p "$FONT_DIR"
wget -O "$FONT_DIR/FiraCode.zip" "$FONT_URL"
unzip -o "$FONT_DIR/FiraCode.zip" -d "$FONT_DIR"
fc-cache -fv

rm "$FONT_DIR/FiraCode.zip"

# Spam users as much as possible

echo "set guifont=$FONT_NAME:h12" >> ~/.vimrc

echo "Please manually set your terminal font to '$FONT_NAME' to fully enjoy Nerd Fonts."
echo "You can do this by opening your terminal's settings and selecting '$FONT_NAME' as the font."

echo "Setup complete! Nerd Font installed and configured for Vim."
