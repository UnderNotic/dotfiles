#!/bin/bash

# albert install
echo ''
echo 'Installing albert'
echo ''

echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt update
sudo apt install albert -y

mkdir -p ~/.config/albert
cp ./albert/albert.conf ~/.config/albert

# autostart
ln -s /usr/share/applications/albert.desktop ~/.config/autostart/