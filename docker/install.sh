#!/bin/bash

echo ''
read -p "Do you want to install docker? y/n" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo ''
    echo 'Now installing docker'
    echo ''
    sudo apt install docker.io -y
    sudo usermod -aG docker $USER

    echo ''
    echo 'Now installing docker-compose'
    echo ''
    sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose

    echo ''
    echo 'Now adding user to docker group (running docker without sudo)'
    echo ''
    sudo gpasswd -a $USER docker
    newgrp docker

    # ctop install
    echo ''
    echo "Now installing ctop..."
    echo ''
    sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.3/ctop-0.7.3-linux-amd64 -O /usr/local/bin/ctop
    sudo chmod +x /usr/local/bin/ctop
fi
