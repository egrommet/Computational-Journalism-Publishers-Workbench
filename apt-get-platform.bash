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

echo "Removing existing guest additions"
sudo apt-get remove -y \
  virtualbox-guest-dkms \
  virtualbox-guest-source \
  virtualbox-guest-utils \
  virtualbox-guest-x11
sudo apt-get autoremove -y

echo "Installing basic development tools"
sudo apt-get install -y \
  make \
  dkms \
  build-essential \
  linux-headers-generic \
  gcc \
  vim \
  vim-gtk

echo "Updating packages"
sudo apt-get update
sudo apt-get upgrade

echo "Rebooting"
sudo reboot now
