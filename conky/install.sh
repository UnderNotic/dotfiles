#!/bin/bash

echo ''
echo "Now installing conky..."
echo ''
sudo apt install conky -y

sudo cp ./conky/conky.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable conky.service