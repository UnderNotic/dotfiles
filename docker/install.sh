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

    echo ''
    echo 'Now installing docker-compose'
    echo ''
    sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi