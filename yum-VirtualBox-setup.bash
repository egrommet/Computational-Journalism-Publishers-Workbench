#! /bin/bash

echo "If you haven't already, do 'Devices -> Install Guest Additions'"

# install tools
echo "Installing basic development tools"
yum install -y \
  make \
  dkms \
  kernel-devel \
  gcc \
  git

# install
echo "Installing guest additions"
mkdir -p /mnt/cdrom
mount /dev/sr0 /mnt/cdrom
/mnt/cdrom/VBoxLinuxAdditions.run

echo "Rebooting in ten seconds to load VirtualBox modules"
sleep 10
reboot 
