#!/bin/bash

echo ''
read -p "Do you want to install databases? y/n" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # Postgres
    echo ''
    echo "Now installing postgres..."
    echo ''
    sudo apt install postgresql postgresql-contrib pgadmin3 postgresql-client -y	

    # Mongodb
    echo ''
    echo "Now installing mongodb..."
    echo ''
    sudo apt install gnupg -y
    wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -

    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list

    sudo apt-get update
    sudo apt-get install mongodb-org -y

    # systemctl start mongod
    # systemctl enable mongod

    # MySql
    # echo ''
    # echo "Now installing mysql..."
    # echo ''
    # sudo apt install mysql-server -y
    # sudo apt install mysql-workbench -y
fi