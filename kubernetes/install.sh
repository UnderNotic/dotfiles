#!/bin/bash

echo ''
read -p "Do you want to install kubernetes? y/n" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo ''
    echo 'Now installing kubectl'
    echo ''
    curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
    chmod +x ./kubectl
    sudo mv ./kubectl /usr/local/bin/kubectl

    echo ''
    echo 'Now installing minikube'
    echo ''
    sudo apt install libvirt-clients libvirt-daemon-system qemu-kvm
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && sudo install minikube-linux-amd64 /usr/local/bin/minikube

    echo ''
    echo 'Now installing kube-shell'
    echo ''
    pip3 install kube-shell
fi

