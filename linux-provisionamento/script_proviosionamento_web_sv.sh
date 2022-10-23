#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
# A linha abaixo baixa o arquivo .zip do github e com a flag -P envia esse arquivo baixado para o diretório /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp/
cd /tmp/
unzip main.zip
cp -R ./linux-site-dio-main/* /var/www/html/

