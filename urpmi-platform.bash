#! /bin/bash

# remove CD repo - it's not attached any more
sudo urpmi.removemedia 'Mageia 2 - i586 DVD'

echo "Removing guest tools / additions already installed"
sudo urpme --auto virtualbox-guest-additions

# install tools
echo "Installing basic development tools"
sudo urpmi --auto \
  curl \
  wget \
  xrandr \
  dkms \
  vim \
  vim-X11
