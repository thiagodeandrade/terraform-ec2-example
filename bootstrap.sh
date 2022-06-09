#!/bin/bash

cd /etc
rm -rf localtime
ln -s /usr/share/zoneinfo/Brazil/East localtime
clock -w
yum update -y
yum install httpd -y
echo "TF test" > /var/www/html/index.html
chkconfig httpd on
service httpd restart
echo "teste-tf" > /etc/hostname
reboot
