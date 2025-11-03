#!/usr/bin/env bash
set -euxo pipefail

# Install Powerline for VIM.
sudo apt install -y python3-pip
pip3 install --user powerline-status --break-system-packages
sudo cp configs/.vimrc ~/.vimrc
sudo apt install -y fonts-powerline

# Install Patched Font
mkdir -p ~/.fonts
sudo cp -a fonts/. ~/.fonts/
fc-cache -vf ~/.fonts/

