#!/bin/bash

echo "Removendo OpenJDK-11"
sudo dnf remove java-11-openjdk-headless.x86_64

echo "instalando o wget no FEDORA"
echo
sudo dnf install wget
echo

echo "Instaland o OpenJDK 17 - JDK:"
sudo dnf install java-latest-openjdk.x86_64

echo "configurar a variavel de ambiente"
sudo update-alternatives --config java

echo "baixando a IDE ECLIPSE"
wget https://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/2022-03/R/eclipse-jee-2022-03-R-linux-gtk-x86_64.tar.gz
echo
echo "Extraindo o pacote zipado"
tar -xvzf eclipse-jee-2022-03-R-linux-gtk-x86_64.tar.gz

echo "Configurando o arquivo .desktop para o eclipse"
echo "[Desktop Entry]
Comment=Java IDE
Terminal=false
Name=Eclipse
Exec=`echo $HOME`/eclipse/eclipse
Icon=`echo $HOME`/eclipse/icon.xpm
Type=Application
Categories=Application;Development;
" > `echo $HOME`/.local/share/applications/eclipse.desktop

echo "Removendo arquivo zipado"
rm -rf eclipse-jee-2022-03-R-linux-gtk-x86_64.tar.gz 

echo "Instalando e configurando com sucesso a IDE e arquivo para usar o ECLIPSE!!!!"
