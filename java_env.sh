#!/bin/bash

JavaHomePath=$(readlink -ze /usr/bin/java | xargs -0 dirname)

echo
echo
echo "JAVA_HOME=$JavaHomePath" >>~/.bashrc
echo "export JAVA_HOME" >>~/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME" >>~/.bashrc

source ~/.bashrc
echo "Voce configurou o ambiente JAVA na maquina"
