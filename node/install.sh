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
npm install -g regexgen clipboard-cli tldr gifski gtop
npm install -g eslint babel-eslint eslint-config-defaults eslint-config-standard eslint-config-standard-react eslint-plugin-standard eslint-plugin-promise eslint-plugin-jest eslint-plugin-import eslint-plugin-node eslint-plugin-react tslint typescript
npm install -g ndb