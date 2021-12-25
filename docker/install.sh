#!/bin/bash

echo ''
echo 'Now adding user to docker group (running docker without sudo)'
echo ''
sudo gpasswd -a $USER docker
newgrp docker
