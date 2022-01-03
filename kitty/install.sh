#!/bin/bash

echo ''
echo 'Configuring kitty'
echo ''

mkdir -p ~/.config/kitty/
cp ./kitty/kitty.conf ~/.config/kitty/kitty.conf
sudo chmod 777 ~/.config/kitty/