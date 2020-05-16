# raspbian-ssd-boot
Raspbian Bootable from SSD Script

```
# First running after SSD plugin to USB
curl -sL https://raw.githubusercontent.com/krdesigns-com/raspbian-ssd-boot/master/install-microsd.sh | bash

# 2nd boot after microSD add ssh again Boot is now from SSD
curl -sL https://raw.githubusercontent.com/krdesigns-com/raspbian-ssd-boot/master/install-ssd.sh | bash

# 3rd and final booting from SSD
curl -sL https://raw.githubusercontent.com/krdesigns-com/raspbian-ssd-boot/master/install-final.sh | bash
```
