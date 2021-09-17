#!/bin/bash

wget https://dl.google.com/linux/direct/google-chrome-unstable_current_amd64.deb
sudo apt -y install ./google-chrome-unstable_current_amd64.deb
rm ./google-chrome-unstable_current_amd64.deb
