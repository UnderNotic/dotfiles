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

echo ''
echo "Now installing azure-functions-core-tools"
echo ''
sudo apt-get install azure-functions-core-tools -y

# Setup and configure az cli
echo ''
read -p "Do you want to install Azure CLI? y/n (This will take some time...)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo ''
	echo "Now installing az cli..."
    echo ''
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

else 
    echo "You chose not to install Azure CLI. Exiting now."
fi