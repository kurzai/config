#!/bin/bash
# Install Bitwarden

sudo apt update
sudo apt full-upgrade instead

sudo apt -y install handbrake-cli
sudo apt -y install mediainfo
sudo apt -y install python3-pip
sudo apt -y install chromium-browser
sudo apt -y install npm
sudo apt -y install ffmpeg

./install_chrome_unstable.sh
./install_nodejs.sh

# apps to install
# - vscodium
# - bitwarden

# git
git config --global user.name "Daniel Kurz"
git config --global user.email danielkurz03@protonmail.com
