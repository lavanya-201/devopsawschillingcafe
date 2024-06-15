#!/bin/bash
sudo yum install wget net-tools unzip httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
mkdir -p webfiles
cd webfiles
sudo wget https://templatemo.com/tm-zip-files-2020/templatemo_520_highway.zip
sudo unzip -o templatemo_520_highway.zip
sudo rm -rf /var/www/html/*
sudo cp -r templatemo_520_highway/* /var/www/html/
cd ..
sudo rm -rf webfiles
sudo systemctl restart httpd
