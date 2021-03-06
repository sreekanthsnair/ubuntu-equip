#!/bin/sh

#
# Ubuntu Equip 
#  Redis Equip
# Licence: MIT
# with help from http://www.denofubiquity.com/nosql/412/

sudo apt-get install tcl8.5

# wget http://redis.googlecode.com/files/redis-2.4.17.tar.gz
wget https://github.com/sreekanthsnair/ubuntu-equip/blob/master/etc/redis-3.0.4.tar.gz?raw=true
# mv redis-2.4.17.tar.gz redis-stable.tar.gz
tar xvzf redis-3.0.4.tar.gz
cd redis-3.0.4

make 
make test
sudo make install

cd ..

wget --no-check-certificate https://raw.githubusercontent.com/sreekanthsnair/ubuntu-equip/master/etc/redis.conf
sudo mv redis.conf /etc/redis.conf

wget https://github.com/ijonas/dotfiles/raw/master/etc/init.d/redis-server
sudo mv redis-server /etc/init.d/redis-server
sudo chmod +x /etc/init.d/redis-server

sudo mkdir -p /var/lib/redis
sudo mkdir -p /var/log/redis
sudo useradd --system --home-dir /var/lib/redis redis
sudo chown redis.redis /var/lib/redis
sudo chown redis.redis /var/log/redis


sudo update-rc.d redis-server defaults
sudo /etc/init.d/redis-server start

