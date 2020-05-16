#!/bin/bash
###############################################################
# Created by Richard Tirtadji
#
#
# microSD installer for Raspbian Buster
# Bootable from SSD
###############################################################
# Make sure you are running different ID between SSD and microSD 
sed -e 's/\s*\([\+0-9a-zA-Z]*\).*/\1/' << EOF | sudo fdisk /dev/sda
  p # print partitions
  x # extra functionality
  i # change identifier
  0xd34db33f # new disk identifier
  r # exit extra functionality
  w # write table
EOF

sudo mv /boot/cmdline.txt /boot/cmdline.txt.bak

sudo cat <<EOF >/boot/cmdline.txt
console=serial0,115200 console=tty1 root=PARTUUID=d34db33f-02 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait
EOF

echo -e "Make sure you do touch ssh for your microSD"
echo -e "Installing NGINX \e[32m[DONE]\033[0m"

sudo shutdown now