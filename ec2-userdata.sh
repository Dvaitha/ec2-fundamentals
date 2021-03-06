#!/bin/bash

#User this file if you launched Amazon Linux 2
#Creating User Data Shell script to install httpd and setup dummy html page on startup of instance

#Get Admin Privilages
sudo su

#install httpd (Linux 2 Version)
yum update -y
yum install -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello From $(hostname -f)" > /var/www/html/index.html