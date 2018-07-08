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
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
    echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
    sudo apt-get update
    sudo apt-get install -y mongodb-org

    # MySql
    # echo ''
    # echo "Now installing mysql..."
    # echo ''
    # sudo apt install mysql-server -y
    # sudo apt install mysql-workbench -y
fi