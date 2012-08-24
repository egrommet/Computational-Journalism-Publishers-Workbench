#! /bin/bash -v

# get rid of any VMware tools
zypper --quiet remove -y libvmtools0 open-vm-tools open-vm-tools-gui \
  vmware-guest-kmp-default vmware-guest-kmp-desktop vmware-guest-kmp-pae
