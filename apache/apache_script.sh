#!/bin/bash

#Download packages
sudo yum update

#Install Apache HTTP Web Server
sudo yum install httpd

#Enable & Start Apache web server
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd

#Install & Enable Firewall allow web traffic Port 80 & 443
sudo yum install firewalld
sudo systemctl enable firewalld
sudo systemctl status firewalld

sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https


#Get Public IP Address
echo “Public IP address:” ‘curl -4 icanhazip.com’



