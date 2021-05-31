#!/bin/bash
echo CTRL+C para parar
read -p "CÓDIGO AUTOMATIZADO INSTALAÇÃO DO AMBIENTE DE DESENVOLVIMENTO DO BITCOIN" -t 2
read -p "BAIXAR CÓDIGO FONTE DA REALBIT E COMPILAR AUTOMATICAMENTE" -t 3
read -p "Instalando pacotes -- maren..." -t 1
sudo apt-get install git python-pip -y && sudo pip install scrypt construct==2.5.2 -y && pip3 install base58 ecdsa -y && sudo apt-get install git build-essential libtool autotools-dev automake autoconf pkg-config libboost- all-dev libevent-dev gdb libssl-dev -y && sudo apt install build-essential libtool autotools-dev automake pkg-config bsdmainutils curl git -y && sudo apt install nsis && sudo apt install g++-mingw-w64-x86-64 && sudo apt-get install build-essential libtool autotools-dev automake pkg-config bsdmainutils && sudo apt-get install libevent-dev libboost-dev libboost-system-dev libboost-filesystem-dev libboost-test-dev && sudo apt install libsqlite3-dev && sudo apt install libminiupnpc-dev libnatpmp-dev && sudo apt-get install libzmq3-dev && sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools && sudo apt-get install libqrencode-dev
read -p "Baixando - Compilando - Instalando pacotes 1 -- maren..." -t 1
git clone https://github.com/maren7/btcdeb.git && cd btcdeb && ./autogen.sh && ./configure && sudo make install && cd ../
read -p "Baixando - Compilando - Instalando pacotes 2 -- maren..." -t 1
git clone https://github.com/bitcoin-core/secp256k1.git && cd secp256k1 && ./autogen.sh && ./configure && sudo make install && cd ../
read -p "Baixando - Compilando - Instalando pacotes 3 -- maren..." -t 1
git clone https://github.com/maren7/blockchain-dev-tools.git && cd blockchain-dev-tools && ./INSTALL.sh && cd ..
read -p "TUDO OK..." -t 2
read -p "Baixando código" -t 1
git clone https://github.com/maren7/bitcoin && bitcoin && ./autogen.sh && ./configure && make -f Makefile