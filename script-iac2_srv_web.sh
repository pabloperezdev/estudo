#!/bin/bash

yum update -y
yum install httpd -y
yum install unzip -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
chown apache:apache /var/www/html/linux-site-dio-main/
