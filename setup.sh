#!/bin/bash
# Install Bitwarden

sudo apt update
sudo apt full-upgrade instead

sudo apt install geany-plugins
sudo apt install gnome-builder

./install_brave.sh

sudo apt install chromium

sudo apt install npm

sudo apt -y install node-typescript
sudo npm i -g ts-node node-gyp

sudo apt -y install handbrake-cli

./install_chrome_unstable.sh