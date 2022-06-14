#!/bin/bash

set -e # fail out of script if any command fails
SECONDS=0

echo "make tmp directory"
cd
mkdir tmp
cd tmp

echo "install git"

sudo apt install git

echo "install set up files for github desktop"

wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null

sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'

sudo apt-get update

echo "install github desktop"

sudo apt install github-desktop

#echo "install vscode"

#sudo snap install --classic code

echo "install R-base requirementso"

sudo apt update

sudo apt -y install r-base gdebi-core

echo "Download RStudio"

sudo apt install curl

curl -O  https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.4.1717-amd64.deb

echo "install RStudio"

sudo gdebi rstudio-1.4.1717-amd64.deb

echo "install MySQL"

sudo apt-get update
sudo apt-get install mysql-server

echo "run the following commands if you want to enable remote access"
echo "sudo ufw enable"
echo "sudo ufw allow mysql"

echo "Start the MySQL service"
sudo systemctl start mysql

echo "Start the MySQL shell"

echo "There is more than one way to work with a MySQL server"
echo "the most basic and compatible approach is to use the mysql shell."
echo "At the command prompt, run the following command to launch the mysql shell and enter it as the root user:"
echo ""
echo "/usr/bin/mysql -u root -p"

echo "Download MySQL Workbench configuration file from the apt repository"
curl -O https://dev.mysql.com/downloads/repo/apt/mysql-apt-config_0.8.17-1_all.deb

echo "install deb config file"
sudo apt install ./mysql-apt-config_0.8.17-1_all.deb

echo "do a sudo apt update"
sudo apt update

echo "Install MySQL Workbench"
#sudo apt install mysql-workbench-community

snap install mysql-workbench-community

echo "allow snap installed mysql workbench to connect to mysql server"
sudo snap connect mysql-workbench-community:password-manager-service :password-manager-service

echo "Install MongoDB Shell"
echo "Import the public key used by the package management system"
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "The operation should respond with an OK."

echo "Create a list file for MongoDB"
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

echo "Reload local package database"
sudo apt-get update

echo " Install the MongoDB packages"
sudo apt-get install -y mongodb-org

echo "If you are unsure which init system your platform uses, run the following command:"

ps --no-headers -o comm 1

echo "Start MongoDB"
sudo systemctl start mongod

echo "Verify that MongoDB has started successfully."
sudo systemctl status mongod

echo "Begin using MongoDB"
mongo

echo "to Stop MongoDB"
echo "sudo service mongod stop"

echo "download Anaconda"
curl -O https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh

echo "get a sha256 sum of your download"
sha256sum Anaconda3-2021.05-Linux-x86_64.sh

echo "Run Anaconda Installation Script"
bash Anaconda3-2021.05-Linux-x86_64.sh

echo "make director to hold sakila files"
mkdir mysql_files

echo "change directories into mysql_files"
cd mysql_files

echo "Download sakila files"
curl -O https://downloads.mysql.com/docs/sakila-db.zip

echo "chmod 755 sakila-db.zip"
chmod 755 sakila-db.zip

echo "unzip sakila-db.zip"
unzip sakila-db.zip

