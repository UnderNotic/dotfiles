#!/bin/bash

# dotnet core install
echo ''
echo 'Installing dotnet core'
echo ''
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg
sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
wget -q https://packages.microsoft.com/config/ubuntu/18.04/prod.list 
sudo mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
sudo chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
sudo chown root:root /etc/apt/sources.list.d/microsoft-prod.list
sudo apt update
sudo apt install dotnet-sdk-2.2 -y

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