#!/bin/bash

# ruby install
echo ''
echo 'Installing ruby'
echo ''
sudo apt install ruby ruby-dev -y

# jekyll install
echo ''
echo 'Installing Jekyll'
echo ''
sudo gem install bundler
sudo gem install jekyll