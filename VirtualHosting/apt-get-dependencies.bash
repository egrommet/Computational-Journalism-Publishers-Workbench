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

sudo apt-get install -y \
  gir1.2-spice-client-glib-2.0 \
  gir1.2-spice-client-gtk-2.0 \
  gir1.2-spice-client-gtk-3.0 \
  libspice-client-glib-2.0-1 \
  libspice-client-gtk-2.0-1 \
  libspice-client-gtk-3.0-1 \
  libspice-protocol-dev \
  libspice-server1 \
  libvirt-bin \
  python-spice-client-gtk \
  qemu-kvm \
  qemu-kvm-spice \
  qemu-utils \
  spice-client \
  spice-client-gtk \
  spice-vdagent \
  virt-goodies \
  virtinst \
  virt-manager \
  virt-top \
  virt-viewer \
  xserver-xorg-video-qxl

echo "Add Virtual Machine Manager users to the 'libvirtd' group!"
sleep 4
sudo vim /etc/group
