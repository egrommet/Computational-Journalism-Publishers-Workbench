#! /bin/bash

echo "If you haven't already, do 'Devices -> Install Guest Additions'"

# install tools
echo "Installing basic development tools"
yum install -y \
  make \
  dkms \
  kernel-devel \
  gcc \
  vim \
  vim-X11

# install
echo "Installing guest additions"
mkdir -p /mnt/cdrom
mount /dev/sr0 /mnt/cdrom
/mnt/cdrom/VBoxLinuxAdditions.run

echo "Shutting down in 15 seconds so you can take a snapshot"
sleep 15
shutdown -P now
