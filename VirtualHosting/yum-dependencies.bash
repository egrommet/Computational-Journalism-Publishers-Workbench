#! /bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

sudo -H yum install -y \
  virt-install \
  virt-manager \
  virt-top \
  virt-viewer \
  guestfs-browser \
  libguestfs-tools \
  python-libguestfs \
  qemu-system-x86 \
  libvirt-daemon-kvm \
  libvirt-daemon-config-network


# enable / start services
sudo service libvirtd enable
sudo service libvirtd start
sudo service libvirt-guests enable
sudo service libvirt-guests start
