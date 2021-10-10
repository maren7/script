#!/bin/bash
echo CTRL+C para parar
read -p "Instalando pacotes -- maren..." -t 1
sudo apt-get install build-essential libtool autotools-dev automake autoconf pkg-config libboost-all-dev libevent-dev gdb libssl-dev build-essential libtool autotools-dev automake pkg-config bsdmainutils curl git nsis g++-mingw-w64-x86-64 build-essential libtool autotools-dev automake pkg-config bsdmainutils libevent-dev libboost-dev libboost-system-dev libboost-filesystem-dev libboost-test-dev libsqlite3-dev libminiupnpc-dev libnatpmp-dev libzmq3-dev -y && sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libqrencode-dev -y && sudo apt-get install git python-pip -y && sudo pip install scrypt construct==2.5.2 && pip3 install base58 ecdsa
read -p "Baixando - Compilando - Instalando pacotes 1 -- maren..." -t 1
git clone https://github.com/kallewoof/btcdeb.git && ./autogen.sh && ./configure && sudo make install && cd ../
read -p "Baixando - Compilando - Instalando pacotes 2 -- maren..." -t 1
git clone https://github.com/bitcoin-core/secp256k1.git && cd secp256k1 && ./autogen.sh && ./configure && sudo make install && cd ../
read -p "Baixando - Compilando - Instalando pacotes 3 -- maren..." -t 1
git clone https://github.com/JBaczuk/blockchain-dev-tools.git && cd blockchain-dev-tools && ./INSTALL.sh && cd ..
read -p "TUDO OK... " -t 2
read -p "...Baixando código" -t 1
git clone https://github.com/maren7/bitcoin && bitcoin && ./autogen.sh && ./configure && make -f Makefile
