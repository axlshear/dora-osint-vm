# DORA OSINT VM

DORA is a virtual machine based on
[@inteltechnique](https://twitter.com/IntelTechniques) latest
[book](https://inteltechniques.com/book1.html). The vm is built using
[packer](https://www.packer.io/) and the resulting build files can be imported
into [Virtualbox](https://www.virtualbox.org/). The operating system is 64-bit
[Debian](https://www.debian.org/) with [XFCE](https://xfce.org/) as the desktop
environment.

DORA is not an exact implementation of the VM in the book:

1. Not all software in the book is installed
2. Firefox is not preconfigured and no add-ons have been installed
3. No scripts from the book have been included, if the author consents then I will consider merging them in.

This project is meant to provide a method for automating the VM creation and
some of the software installation steps of Chapter 5. The user still needs to
complete the configuration of Firefox and install the desired add-ons. I
strongly recommend purchasing the book and completing the exercise of
building a VM manually.

## Requirements

I use linux as my host machine, there may be additional requirements for Windows
or Mac hosts.

* [Packer](https://www.packer.io/)
* [Virtualbox](https://www.virtualbox.org/)

## Building VM

```
packer build debian-10.2.0-osint.json
```

This can take a while depending on your hardware and network speed and will
create a *vmdk* and *ovf* file in a folder called *output-virtualbox-iso*

## Importing into VirtualBox

1. Launch Virtualbox
2. Click File > Import Appliance
3. Click the open file icon next to the File textbox
4. Navigate to the *output-virtualbox-iso* folder created during the build
5. Click the *ovf* file
6. Click Next
7. Click Import

## VM Configuration

* OS: Debian 10.2.0 64-bit
* Memory: 4GB
* HD Size: 32GB
* Video Memory: 64MB
* Shared clipboard: Bidirectional
* Drag n’ Drop: Bidirectional
* DE: xfce

### User Accounts:

User | Pass | Additional Groups
--- | --- | ---
root | t00r | |
osint | tnis0 | sudo, vboxsf

### Installed Software:

The preseed config installs the following additional packages:

* [openssh-server](https://packages.debian.org/buster/openssh-server)
* [linux-headers-amd64](https://packages.debian.org/buster/linux-headers-amd64)
* [build-essential](https://packages.debian.org/buster/build-essential)
* [ffmpeg](https://packages.debian.org/buster/ffmpeg)
* [vlc](https://packages.debian.org/buster/vlc)
* [python-pip](https://packages.debian.org/buster/python-pip)
* [python3-pip](https://packages.debian.org/buster/python3-pip)
* [git](https://packages.debian.org/buster/git)
* [mediainfo-gui](https://packages.debian.org/buster/mediainfo-gui)
* [libimage-exiftool-perl](https://packages.debian.org/buster/libimage-exiftool-perl)
* [webhttrack](https://packages.debian.org/buster/webhttrack)
* [keepassxc](https://packages.debian.org/buster/keepassxc)
* [kazam](https://packages.debian.org/buster/kazam)

Provisioning scripts are used to install the following software

* [Virtualbox Guest Additions](https://www.virtualbox.org/manual/ch04.html)
* [golang 1.13.6](https://golang.org/)
* [Google Earth Pro](https://www.google.com/earth/versions/#earth-pro)
* [youtube_dl](https://youtube-dl.org/)
* [Instalooter](https://github.com/althonos/InstaLooter)
* [Instaloader](https://github.com/instaloader/Instaloader)
* [twint](https://github.com/twintproject/twint)
* [Eyewitness](https://github.com/FortyNorthSecurity/EyeWitness)
* [Amass](https://github.com/OWASP/Amass)
* [Sublist3r](https://github.com/aboul3la/Sublist3r)
* [Photon](https://github.com/s0md3v/Photon)
* [theHarvester](https://github.com/laramies/theHarvester)

