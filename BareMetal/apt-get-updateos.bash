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
sudo -H apt-get purge -y \
  open-vm-dkms \
  open-vm-toolbox \
  open-vm-tools \
  open-vm-tools-dbg \
  open-vm-tools-dev \
  virtualbox-guest-dkms \
  virtualbox-guest-source \
  virtualbox-guest-utils \
  virtualbox-guest-x11

../common/authenticate.bash "Installing basic development tools"
sudo -H apt-get install -y \
  apt-file \
  vim \
  git \
  curl \
  wget \
  lynx \
  aria2 \
  libcurl4-gnutls-dev \
  openjdk-7-jdk
sudo -H apt-file update

# Needed to install guest tools on virtual machines
sudo -H apt-get install -y \
  build-essential \
  libncurses5-dev \
  openssl \
  libssl-dev \
  make \
  dkms

../common/authenticate.bash "Updating packages"
echo "Press 'Enter' to accept defaults if asked about configuration files"
sleep 10
sudo -H apt-get update
sudo -H apt-get upgrade -y
