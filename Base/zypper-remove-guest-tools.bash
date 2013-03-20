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

../common/authenticate.bash "Removing guest tools / additions already installed"
sudo -H zypper remove -y \
  virtualbox-guest-kmp-default \
  virtualbox-guest-kmp-desktop \
  virtualbox-guest-kmp-pae \
  virtualbox-guest-tools \
  virtualbox-guest-x11 \
  open-vm-tools \
  open-vm-tools-gui \
  vmware-guest-kmp-default \
  vmware-guest-kmp-desktop \
  vmware-guest-kmp-pae
