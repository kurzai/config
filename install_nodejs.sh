#!/bin/bash

curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt -y install nodejs gcc g++ make
sudo apt -y install node-typescript

sudo npm i -g ts-node node-gyp

