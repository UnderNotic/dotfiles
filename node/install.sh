#!/bin/bash

# nvm install
echo ''
echo 'Installing nvm'
echo ''
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

#setup nvm default global packages
echo ''
echo 'Setuping nvm default global packages'
echo ''
cp ./node/default-packages ~/.nvm/

# node install
echo ''
echo 'Installing nodejs'
echo ''
source ~/.nvm/nvm.sh

nvm install node
nvm use node

# npm install (just tu be sure all packages are installed)
echo ''
echo 'Installing npm global packages'
echo ''
npm install -g nodemon create-react-app jest forever http-server pm2 webpack webpack-dev-server artillery testcafe yarn gatsby-cli