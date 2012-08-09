#! /bin/bash

echo "If you haven't already, do 'Devices -> Install Guest Additions'"

# update
zypper update

# install tools
echo "Installing basic development tools"
zypper install -y \
  make \
  kernel-devel \
  vim-data \
  vim-enhanced \
  gvim \
  gcc

echo "Removing guest tools / additions already installed"
zypper remove -y virtualbox-guest-kmp-default \
  virtualbox-guest-kmp-desktop virtualbox-guest-kmp-pae virtualbox-guest-tools \
  virtualbox-guest-x11
zypper remove -y libvmtools0 open-vm-tools open-vm-tools-gui \
  vmware-guest-kmp-default vmware-guest-kmp-desktop vmware-guest-kmp-pae

# install
echo "Installing guest additions"
mkdir -p /mnt/cdrom
mount /dev/sr0 /mnt/cdrom
/mnt/cdrom/VBoxLinuxAdditions.run

echo "Shutting down in 15 seconds to take snapshot"
sleep 15
shutdown -P now
