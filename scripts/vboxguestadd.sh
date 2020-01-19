#!/bin/bash

# Install additional guests
mkdir /tmp/vbox
VER=$(cat /home/osint/.vbox_version)
mount -o loop /home/osint/VBoxGuestAdditions_$VER.iso /tmp/vbox 
yes | sh /tmp/vbox/VBoxLinuxAdditions.run
umount /tmp/vbox
rmdir /tmp/vbox
rm /home/osint/*.iso
ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions

# Add user to vbox group
usermod -a -G vboxsf osint

# Cleanup
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
rm -rf /usr/src/virtualbox-ose-guest*
rm -rf /usr/src/vboxguest*
