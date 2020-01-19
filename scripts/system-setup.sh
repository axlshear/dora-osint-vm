#!/bin/bash
apt-get update

# add user to sudo group
usermod -a -G sudo osint

# install golang
wget https://dl.google.com/go/go1.13.6.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.13.6.linux-amd64.tar.gz

# install google earth pro
wget -O google-earth64.deb http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb
dpkg -i google-earth64.deb
# need to understand what this line does
apt-get -f install; rm google-earth64.deb

