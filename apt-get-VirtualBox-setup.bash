#! /bin/bash

echo "If you haven't already, do 'Devices -> Install Guest Additions'"

# remove existing guest additions
apt-get remove -y \
  virtualbox-guest-dkms \
  virtualbox-guest-source \
  virtualbox-guest-utils \
  virtualbox-guest-x11
apt-get autoremove -y

# make sure the whole LXDE desktop is here
apt-get install -y \
  firefox \
  lxde \
  lxappearance-obconf \
  lxlauncher \
  lxpanel-indicator-applet-plugin \
  lxtask \
  menu-xdg \
  obconf \
  obmenu \
  openbox \
  openbox-themes \
  openbox-xdgmenu \
  xdg-user-dirs-gtk \
  xdg-user-dirs \
  xdg-utils

# install tools
echo "Installing basic development tools"
apt-get install -y \
  make \
  dkms \
  build-essential \
  linux-headers-generic \
  gcc \
  vim \
  vim-gtk

# install
echo "Installing guest additions"
mkdir -p /mnt/cdrom
mount /dev/sr0 /mnt/cdrom
/mnt/cdrom/VBoxLinuxAdditions.run

echo "Shutting down in 15 seconds so you can take a snapshot"
sleep 15
shutdown -P now
