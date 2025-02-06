#!/bin/bash
#multiple IPs
#this installs build-essential (make gcc)
#then clones git and builds 3proxy
#then replaces 3proxy.cfg with gitea version for multipe IPs
sudo apt-get -y update && sudo apt-get -y install build-essential && sudo apt install -y git
git clone https://github.com/z3apa3a/3proxy
cd 3proxy
ln -s Makefile.Linux Makefile
make
sudo make install
chmod 755 /etc/3proxy/conf/add3proxyuser.sh
cd /usr/local/3proxy/conf/
sudo rm 3proxy.cfg
curl -X GET "https://git.4490.live/api/v1/repos/gitea/3proxy/raw/3proxyX.cfg?token=1f702034c1f947d110392ac5019e31e8d9a812b9" -H "accept: application/json" --output 3proxy.cfg
chmod 755 /usr/local/3proxy/conf/3proxy.cfg
