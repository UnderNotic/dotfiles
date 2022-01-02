#!/bin/bash

echo ''
echo 'Configuring midnight commander'
echo ''

mkdir -p ~/.config/mc/
cp ./mc/ini ~/.config/mc/
sudo cp ./mc/mc.keymap ~/.config/mc/mc.keymap
sudo chmod 777 ~/.config/mc/