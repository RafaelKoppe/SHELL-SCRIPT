#!/bin/bash

distro=$(lsb_release -i | cut -f 2-)
user=$(whoami)

sudo dnf install redhat-lsb-core -y

echo "instalando o wget no FEDORA"
echo
sudo dnf install wget
echo

echo "Instalando OpenJDK 17 - JDK:"

	if [[ $distro == "Fedora" ]]; then
         sudo dnf install java-17-openjdk

   	elif [[ $distro == "Linuxmint" ]] || [[ $distro == "Ubuntu" ]] || [[ $distro == "Debian" ]]; then
      	 sudo apt install openjdk-$versao*

         else
         echo "Sua distro não é compátivel com esse script"
         echo "Encerrando"
         exit
        fi

echo "**************Configurar a variavel de ambiente********************"
sudo update-alternatives --config java

echo "********************Baixando a IDE ECLIPSE********************"
wget https://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/2022-03/R/eclipse-jee-2022-03-R-linux-gtk-x86_64.tar.gz
echo
echo "********************Extraindo o pacote zipado********************"
tar -xvzf eclipse-jee-2022-03-R-linux-gtk-x86_64.tar.gz

mv eclipse/ /$HOME/

echo "********************Configurando o arquivo .desktop para o eclipse********************"
echo
echo "[Desktop Entry]
Comment=Java IDE
Terminal=false
Name=Eclipse
Exec=`echo $HOME`/eclipse/eclipse
Icon=`echo $HOME`/eclipse/icon.xpm
Type=Application
Categories=Application;Development;
" > `echo $HOME`/.local/share/applications/eclipse.desktop

echo "********************Removendo arquivo zipado********************"
rm -rf eclipse-jee-2022-03-R-linux-gtk-x86_64.tar.gz 

echo "Instalando e configurando com sucesso a IDE e arquivo para usar o ECLIPSE!!!!"
