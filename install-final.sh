#!/bin/bash
###############################################################
# Created by Richard Tirtadji
#
#
# microSD installer for Raspbian Buster
# Bootable from SSD
###############################################################
# Make new /dev/root in SSD drive (make sure 1st sector and 2nd sector are correct)
sed -e 's/\s*\([\+0-9a-zA-Z]*\).*/\1/' << EOF | sudo fdisk /dev/sda
  p # print the partition table
  d # delete a partition
  2 # partition number 2
  n # add a new partition
  p # primary partition table
  2 # partition number 2
  532480 # beginning sector partition
    # default ending sector partition
  w # write table to disk and exit
EOF

sudo resize2fs /dev/sda2

echo -e "COMPLETE \e[32m[DONE]\033[0m"