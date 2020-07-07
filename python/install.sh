#!/bin/bash

# python install
echo ''
echo 'Installing python'
echo ''
sudo apt install python3 python3-pip python3-setuptools -y

# Httpie
echo ''
echo "Now installing Httpie..."
echo ''
sudo apt install httpie -y

# Glances for monitoring, task manager
echo ''
echo 'Now installing glances'
echo ''
curl -L https://bit.ly/glances | /bin/bash