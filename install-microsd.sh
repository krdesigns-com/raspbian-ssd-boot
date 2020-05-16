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

sudo cp /boot/cmdline.txt /boot/cmdline.txt.bak
sudo sed -i -r -e 's/PARTUUID=[a-f0-9-]*/PARTUUID=d34db33f-02/g' /boot/cmdline.txt

echo -e "Make sure you do touch ssh for your microSD"
echo -e "Installing NGINX \e[32m[DONE]\033[0m"

sudo shutdown now