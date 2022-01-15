#!/bin/bash

# dotnet core install
echo ''
echo 'Installing dotnet core'
echo ''
wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt update
sudo apt-get install -y dotnet-sdk-6.0

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
    # curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

    curl -sL https://packages.microsoft.com/keys/microsoft.asc |
    gpg --dearmor |
    sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null

    AZ_REPO=$(lsb_release -cs)
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" |
    sudo tee /etc/apt/sources.list.d/azure-cli.list

    sudo apt-get update
    sudo apt-get install azure-cli

else 
    echo "You chose not to install Azure CLI. Exiting now."
fi