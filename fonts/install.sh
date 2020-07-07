#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo ''
echo "Now installing fonts..."
echo ''
sudo mkdir -p /usr/share/fonts/added
yes | sudo cp -rf $DIR/files/* /usr/share/fonts/added
sudo apt install fonts-roboto -y
sudo fc-cache -fv

# Gnome tweaks to change Monospace font to MesloLGS and terminal to use NOT custom font
echo ''
echo 'Now installing gnome tweaks'
echo ''
sudo apt install gnome-tweaks -y

# Set terminal custom font programatically
echo ''
echo 'Now setting default terminal font'
echo ''
PROFILE=`dconf list /org/gnome/terminal/legacy/profiles:/ | grep -m 1 :`
KEY="/org/gnome/terminal/legacy/profiles:/${PROFILE}font"

dconf write $KEY "'MesloLGS NF 12'"

# Set system default monospace font programatically
echo ''
echo 'Now setting system default monospace font'
echo ''
gsettings set org.gnome.desktop.interface monospace-font-name 'MesloLGS NF 12'
