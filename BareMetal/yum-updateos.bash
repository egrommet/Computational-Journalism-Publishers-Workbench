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

echo "No guest tools need to be removed on Fedora"
sleep 4

../common/authenticate.bash 'Installing developer tools'
sudo -H yum install -y \
  vim \
  git \
  curl \
  wget \
  lynx \
  aria2 \
  libcurl-devel

# Needed to install guest tools on virtual machines
sudo -H yum install -y \
  autoconf \
  make \
  gcc \
  kernel-devel \
  dkms \
  ncurses-devel \
  openssl-devel \
  glibc-devel

# Needed for packages
sudo -H yum install -y \
  java-1.7.0-openjdk-devel \
  gcc-c++ \
  gcc-gfortran

../common/authenticate.bash 'Updating packages'
sudo -H yum clean all
sudo -H yum install -y yum-fastestmirror
sudo -H rm -f `find /var/cache/yum/ -name 'timedhosts*'`
sudo -H /usr/bin/time yum update -y
