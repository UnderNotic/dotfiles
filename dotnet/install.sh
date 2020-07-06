#!/bin/bash

# dotnet core install
echo ''
echo 'Installing dotnet core'
echo ''
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo rm packages-microsoft-prod.deb
sudo apt update
sudo apt-get install -y dotnet-sdk-3.1

# Setup and configure az cli
echo ''
read -p "Do you want to install Azure CLI? y/n (This will take some time...)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo "Now installing az cli..."
    sudo apt install libssl-dev libffi-dev lsb-release -y
    source /etc/os-release
    AZ_REPO=$UBUNTU_CODENAME
    echo $AZ_REPO
    return;
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
sudo tee /etc/apt/sources.list.d/azure-cli.list
sudo apt-key --keyring /etc/apt/trusted.gpg.d/Microsoft.gpg adv \
     --keyserver packages.microsoft.com \
     --recv-keys BC528686B50D79E339D3721CEB3E94ADBE1229CF
    sudo apt-get update
    sudo apt-get install azure-cli -y
    echo "Now installing azure-functions-core-tools"
    sudo apt-get install azure-functions-core-tools -y
else 
    echo "You chose not to install Azure CLI. Exiting now."
fi