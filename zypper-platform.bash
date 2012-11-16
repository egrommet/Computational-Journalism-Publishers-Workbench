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

echo "Adding repositories as 'root'"
echo "You will need to authenticate"
sudo zypper addrepo -cf http://download.opensuse.org/repositories/Documentation:/Tools/openSUSE_12.2/Documentation:Tools.repo # Tesseract lives here
sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/haskell:/next/openSUSE_12.2/devel:languages:haskell:next.repo # Pandoc
echo "Answer 'a' to 'Do you want to reject the key, trust temporarily, or trust always?' below."
sudo zypper refresh

echo "Removing install DVD repository reference"
sudo zypper rr 'openSUSE-12.2-1.6'

echo "Removing guest tools / additions already installed"
sudo zypper remove -y virtualbox-guest-kmp-default \
  virtualbox-guest-kmp-desktop virtualbox-guest-kmp-pae virtualbox-guest-tools \
  virtualbox-guest-x11
sudo zypper remove -y libvmtools0 open-vm-tools open-vm-tools-gui \
  vmware-guest-kmp-default vmware-guest-kmp-desktop vmware-guest-kmp-pae

echo "Installing basic development tools"
sudo zypper install -y \
  curl \
  wget \
  make \
  kernel-devel \
  vim-data \
  vim-enhanced \
  gvim \
  gcc
