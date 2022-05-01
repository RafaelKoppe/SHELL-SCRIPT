#!/bin/bash

JavaHomePath=$(readlink -ze $(which java) | xargs -0 dirname | xargs -0 dirname)
echo
echo "JAVA_HOME=$JavaHomePath" >>~/.bashrc
echo "export JAVA_HOME" >>~/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME" >>~/.bashrc

source ~/.bashrc
echo "Voce configurou o ambiente JAVA na maquina"
