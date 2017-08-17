#!/bin/bash
git clone --recursive https://github.com/vysheng/tg.git
cd tg
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev libjansson-dev libpython-dev make
./configure --disable-openssl
make
cd ..
git clone --recursive https://github.com/tvdstaaij/telegram-history-dump.git
