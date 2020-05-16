#!/bin/bash
###############################################################
# Created by Richard Tirtadji
#
#
# microSD installer for Raspbian Buster
# Bootable from SSD
###############################################################
# Perform changes fstab SSD
sudo sed -i -r -e '3s/PARTUUID=[a-f0-9-]*/PARTUUID=d34db33f-02/g' /etc/fstab

echo -e "Will perform reboot now"
echo -e "fstab changes \e[32m[DONE]\033[0m"

sudo reboot now
