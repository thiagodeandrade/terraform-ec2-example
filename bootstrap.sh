#!/bin/bash

# Apenas para deixar com horário Brasil GMT-3
cd /etc
rm -rf localtime
ln -s /usr/share/zoneinfo/Brazil/East localtime
clock -w
# Faz update do Linux
yum update -y
# Instala Apache
yum install httpd -y
# Cria um index.html
echo "Maquina de teste criada com Terraform" > /var/www/html/index.html
# Habilita o Apache no boot 
chkconfig httpd on
# Reinicia o serviço do Apache
service httpd restart
# Muda o hostname da máquina
echo "teste-tf" > /etc/hostname
# reinicia
reboot
