#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install all Homebrew packages
xargs brew install < .leaves.txt

# Install all fish packages
chmod +x ./scripts/fish.sh
./fish.sh

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Create config directory
mkdir -p ~/.config

# Setup symlinks for Config
stow .
