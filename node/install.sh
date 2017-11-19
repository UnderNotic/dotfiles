#!/usr/bin/env zsh

# nvm install
echo ''
echo 'Installing nvm'
echo ''
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

# node install
echo ''
echo 'Installing nodejs'
echo ''
source ~/.nvm/nvm.sh

nvm install node
nvm use node

npm install -g nodemon create-react-app jest eslint babel-eslint eslint-config-defaults eslint-plugin-react eslint-plugin-jest forever http-server pm2 tldr typings webpack webpack-dev-server autocannon yarn
