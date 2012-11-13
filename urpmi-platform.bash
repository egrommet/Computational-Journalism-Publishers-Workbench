#! /bin/bash

# remove CD repo - it's not attached any more
sudo urpmi.removemedia 'Mageia 2 - i586 DVD'

echo "Removing guest tools / additions already installed"
sudo urpme --auto --auto-orphans virtualbox-guest-additions

# install tools
echo "Installing basic development tools"
sudo urpmi --auto \
  xrandr \
  dkms \
  vim \
  vim-X11

echo "Updating packages"

echo "Rebooting"
sudo reboot now
