#!/bin/bash
dnf install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo "Hello! New project completed, week 6 here we go!" > /var/www/html/index.html