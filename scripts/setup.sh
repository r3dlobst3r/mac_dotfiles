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

# Setup symlinks for Config
stow .
