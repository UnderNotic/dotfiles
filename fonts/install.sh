#!/bin/bash

# fonts for powerline install (change terminal to use sourcecodepro-powerline-awesome-regular font)
echo ''
echo "Now installing fonts..."
echo ''
sudo mkdir -p /usr/share/fonts/added
yes | sudo cp -rf ./fonts/files/* /usr/share/fonts/added
sudo apt install fonts-roboto -y
sudo fc-cache -fv