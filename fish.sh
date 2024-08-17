#!/bin/bash

# Install Fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Virtualfish
python -m pip install virtualfish
vf install

# NVM
fisher install jorgebucaran/nvm.fish
