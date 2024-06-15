#!/bin/bash
sudo yum install wget net-tools unzip httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
mkdir -p webfiles
cd webfiles
sudo wget https://www.tooplate.com/zip-templates/2118_chilling_cafe.zip
sudo unzip -o 2118_chilling_cafe.zip
sudo rm -rf /var/www/html/*
sudo cp -r 2118_chilling_cafe/* /var/www/html/
cd ..
sudo rm -rf webfiles
sudo systemctl restart httpd
