#!/bin/bash

echo ''
read -p "Do you want to install kubernetes? y/n" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
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

