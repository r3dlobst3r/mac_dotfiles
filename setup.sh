#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install all Homebrew packages
chmod +x ./brew.sh
./brew.sh

# Install all fish packages
chmod +x ./fish.sh
./fish.sh

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Create config directory
mkdir -p ~/.config

# Setup symlinks for Config
ln -s ./.tmux.conf ~/.tmux.conf
ln -s ./.wezterm.lua ~/.wezterm.lua

ln -s ./config/aerospace/ ~/.config/aerospace
ln -s ./config/fish/ ~/.config/fish
ln -s ./config/nvim/ ~/.config/nvim
ln -s ./config/gh-dash/ ~/.config/gh-dash
ln -s ./config/htop/ ~/.config/htop
ln -s ./config/neofetch/ ~/.config/neofetch
