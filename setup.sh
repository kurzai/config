#!/bin/bash
# Install Bitwarden

sudo apt update
sudo apt full-upgrade instead

sudo apt -y install geany-plugins
sudo apt -y install gnome-builder

./install_brave.sh

sudo apt -y install chromium

sudo apt -y install npm

sudo apt -y install node-typescript
sudo npm i -g ts-node node-gyp

sudo apt -y install handbrake-cli

./install_chrome_unstable.sh

sudo apt -y install mediainfo
