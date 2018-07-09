#!/bin/bash

echo ''
echo "Now installing conky..."
echo ''
sudo apt install conky -y

mkdir -p ~/.config/autostart
cp ./conky/conky.desktop ~/.config/autostart