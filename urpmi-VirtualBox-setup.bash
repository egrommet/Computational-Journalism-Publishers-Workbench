#! /bin/bash

echo "If you haven't already, do 'Devices -> Install Guest Additions'"

# remove CD repo - it's not attached any more
urpmi.removemedia 'Mageia 2 - i586 DVD'

echo "Removing guest tools / additions already installed"
urpme --auto --auto-orphans virtualbox-guest-additions

# install tools
echo "Installing basic development tools"
urpmi --auto \
  xrandr \
  dkms \
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
