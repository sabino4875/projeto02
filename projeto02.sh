#!/bin/bash

echo "Projeto 02"

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o apache..."
apt-get install apache2 -y

echo "Instalando o unzip..."
apt-get install unzip -y

echo "Baixando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo..."
unzip main.zip

echo "Copiando os arquivos do site para o servidor..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Processo finalizado..."