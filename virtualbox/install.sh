#!/bin/bash

echo ''
echo "Now installing virtualbox..."
echo ''

sudo apt install virtualbox
sudo apt install virtualbox-ext-pack

sudo adduser $USER vboxusers