#!/bin/bash

echo ''
read -p "Do you want to install docker? y/n" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo ''
    echo 'Now installing docker'
    echo ''
    sudo apt install docker.io
    sudo usermod -aG docker $USER
fi