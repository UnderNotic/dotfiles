#!/bin/bash

echo ''
echo 'Installing nvm'
echo ''
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo ''
echo 'Setuping nvm default global packages'
echo ''
cp ./node/default-packages ~/.nvm/

echo ''
echo 'Installing nodejs'
echo ''
source ~/.nvm/nvm.sh
nvm install node
nvm use node