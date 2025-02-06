#!/bin/bash
#apt-get update && apt-get -y upgrade
#apt-get install -y build-essential nano
sudo apt-get --assume-yes update && sudo apt-get --assume-yes install build-essential && sudo apt --assume-yes install git
git clone https://github.com/z3apa3a/3proxy
cd 3proxy
ln -s Makefile.Linux Makefile
make
sudo make install
chmod 755 /etc/3proxy/conf/add3proxyuser.sh
cd /usr/local/3proxy/conf/
sudo rm 3proxy.cfg
curl -X GET "https://git.my4490.com/api/v1/repos/gitea/3proxy/raw/3proxy.cfg?token=1f702034c1f947d110392ac5019e31e8d9a812b9" -H  "accept: application/json" --output 3proxy.cfg
chmod 755 /etc/3proxy/3proxy.cfg
