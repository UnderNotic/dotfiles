#!/bin/bash

echo ''
echo 'Installing copyq'
echo ''
sudo add-apt-repository ppa:hluk/copyq -y
sudo apt update
sudo apt install copyq -y
# TODO set global show copyq hotkey as (ctrl + `)