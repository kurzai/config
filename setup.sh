#!/bin/bash
# Install Bitwarden

sudo apt update
sudo apt full-upgrade instead


sudo apt -y install chromium-browser

sudo apt -y install npm

sudo apt -y install node-typescript
sudo npm i -g ts-node node-gyp

sudo apt -y install handbrake-cli
sudo apt -y install mediainfo

./install_chrome_unstable.sh

# apps to install
# - vscodium
# - bitwarden

# git
git config --global user.name "Daniel Kurz"
git config --global user.email danielkurz03@protonmail.com