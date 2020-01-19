#!/bin/bash

# Make some directories
mkdir $HOME/go
mkdir $HOME/Downloads/Programs

# Install PIP software
# python 2
pip install --user --upgrade youtube_dl (press Y)
pip install --user Instalooter
# python 3
pip3 install --user Instaloader
pip3 install --user twint


# Install from source
# Eyewitness
cd ~/Downloads/Programs
git clone https://github.com/ChrisTruncer/EyeWitness.git
cd EyeWitness/setup
# may need sudo
./setup.sh

# Amass
cd ~/Downloads/Programs
export GO111MODULE=on
go get -v -u github.com/OWASP/Amass/v3/...

# Sublist3r
cd ~/Downloads/Programs
git clone https://github.com/aboul3la/Sublist3r.git
# may need sudo
cd Sublist3r && pip install --user -r requirements.txt

# Photon
cd ~/Downloads/Programs
git clone https://github.com/s0md3v/Photon.git
# may need sudo
cd Photon && pip3 install --user -r requirements.txt

# theHarvester
cd ~/Downloads/Programs
git clone https://github.com/laramies/theHarvester.git
# need to understand why we are checking out a branch
cd theHarvester && git checkout 8b88a66
# may need sudo
pip3 install --user -r requirements.txt

