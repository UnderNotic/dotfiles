#!/bin/bash

# nvm install
echo ''
echo 'Installing nvm'
echo ''
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

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
