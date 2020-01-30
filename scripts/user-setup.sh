#!/bin/bash

# Make some directories
mkdir $HOME/go
mkdir -p $HOME/Downloads/Programs

# Install PIP software
# installing all pip software system-wide due to Eyewitness requirement to install as root
# python 2
echo 'tnis0'|sudo -S pip install --upgrade youtube_dl
echo 'tnis0'|sudo -S pip install Instalooter
# python 3
echo 'tnis0'|sudo -S pip3 install Instaloader
echo 'tnis0'|sudo -S pip3 install twint


# Install from source
# Eyewitness
cd ~/Downloads/Programs
git clone https://github.com/ChrisTruncer/EyeWitness.git
cd EyeWitness/setup
echo 'tnis0'|sudo -S ./setup.sh

# Amass
cd ~/Downloads/Programs
export GO111MODULE=on
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
go get -v -u github.com/OWASP/Amass/v3/...

# Sublist3r
cd ~/Downloads/Programs
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
echo 'tnis0'|sudo -S pip install -r requirements.txt

# Photon
cd ~/Downloads/Programs
git clone https://github.com/s0md3v/Photon.git
cd Photon
echo 'tnis0'|sudo -S pip3 install -r requirements.txt

# theHarvester
cd ~/Downloads/Programs
git clone https://github.com/laramies/theHarvester.git
# need to understand why we are checking out a branch
cd theHarvester
git checkout 8b88a66
echo 'tnis0'|sudo -S pip3 install -r requirements.txt

