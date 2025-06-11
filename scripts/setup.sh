#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install all Homebrew packages
brew bundle --file .Brewfile

# Install all fish packages
chmod +x ./scripts/fish.sh
./scripts/fish.sh

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install tmux theme
git clone https://github.com/catppuccin/tmux.git ~/.tmux/plugins/catppuccin/tmux

# Sketchybar Font
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.16/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf

# Setup symlinks for Config
stow . --adopt
