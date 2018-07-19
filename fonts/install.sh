#!/bin/bash

echo ''
echo "Now installing fonts..."
echo ''
sudo mkdir -p /usr/share/fonts/added
yes | sudo cp -rf ./fonts/files/* /usr/share/fonts/added
sudo apt install fonts-roboto -y
sudo fc-cache -fv

# Gnome tweaks to change Monospace font to SauceCodeProRegular and terminal to use NOT custom font
echo ''
echo 'Now installing gnome tweaks'
echo ''
sudo apt install gnome-tweaks -y

# Set terminal custom font programatically
echo ''
echo 'Now setting default terminal font'
echo ''
PROFILE=`dconf list /org/gnome/terminal/legacy/profiles:/ | sed -n 2p`
KEY="/org/gnome/terminal/legacy/profiles:/${PROFILE}font"
dconf write $KEY "'SauceCodePro Nerd Font 13'"
