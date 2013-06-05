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
  python-virtinst \
  libvirt \
  qemu \
  qemu-kvm-tools \
  qemu-user \
  qemu-kvm \
  virt-manager \
  virt-viewer \
  virt-top \
  libvirt-daemon \
  libvirt-daemon-config-network \
  libvirt-daemon-config-nwfilter \
  libvirt-daemon-driver-interface \
  libvirt-daemon-driver-libxl \
  libvirt-daemon-driver-lxc \
  libvirt-daemon-driver-network \
  libvirt-daemon-driver-nodedev \
  libvirt-daemon-driver-nwfilter \
  libvirt-daemon-driver-qemu \
  libvirt-daemon-driver-secret \
  libvirt-daemon-driver-storage \
  libvirt-daemon-driver-uml \
  libvirt-daemon-driver-xen \
  libvirt-daemon-kvm \
  libvirt-daemon-lxc \
  libvirt-daemon-qemu \
  libvirt-daemon-uml \
  libvirt-daemon-xen \
  lxc-doc \
  lxc-templates
