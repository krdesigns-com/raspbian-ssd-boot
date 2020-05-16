#!/bin/bash
###############################################################
# Created by Richard Tirtadji
#
#
# microSD installer for Raspbian Buster
# Bootable from SSD
###############################################################
sudo rm /etc/fstab

sudo cat <<EOF >/etc/fstab
proc            /proc           proc    defaults          0       0
PARTUUID=738a4d67-01  /boot           vfat    defaults          0       2
PARTUUID=d34db33f-02  /               ext4    defaults,noatime  0       1
# a swapfile is not a swap partition, no line here
#   use  dphys-swapfile swap[on|off]  for that
EOF

echo -e "Will perform reboot now"
echo -e "fstab changes \e[32m[DONE]\033[0m"

sudo reboot now
