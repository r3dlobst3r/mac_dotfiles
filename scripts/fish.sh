#!/opt/homebrew/bin/fish

# Install Fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Virtualfish
python3 -m pip install virtualfish
vf install

# NVM
fisher install jorgebucaran/nvm.fish
