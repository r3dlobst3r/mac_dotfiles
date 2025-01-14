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
git clone -b v2.1.2 https://github.com/catppuccin/tmux.git ~/.tmux/plugins/catppuccin/tmux

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Setup symlinks for Config
stow .
