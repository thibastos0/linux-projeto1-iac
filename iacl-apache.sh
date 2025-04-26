#!bin/sh
#!bin/bash

echo "Atualizando o servidor como root:"

apt-get update
apt-get upgrade -y

echo "instalando Apache2:"
apt-get install apache2 -y

echo "instalando unzip:"
apt-get install unzip -y

echo "baixando projeto do github"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "descompactando projeto"
unzip main.zip

echo "copiando projeto para pasta apache"
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado!!"
