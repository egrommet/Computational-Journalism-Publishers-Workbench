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

../common/authenticate.bash 'Installing developer tools'
sudo -H zypper install -y \
  findutils-locate \
  vim-enhanced \
  git \
  curl \
  wget \
  lynx \
  aria2 \
  libcurl-devel

# Needed to install guest tools on virtual machines
sudo -H zypper install -y \
  make \
  gcc \
  kernel-devel

# Needed for packages
sudo -H zypper install -y \
  java-1_7_0-openjdk-devel \
  gcc-c++ \
  gcc-fortran

# R and GGobi from distro!
sudo -H zypper addrepo -cf \
  http://download.opensuse.org/repositories/home:/aeszter/openSUSE_12.3/home:aeszter.repo
sudo -H zypper --gpg-auto-import-keys refresh
sudo -H zypper install -y \
  R-base \
  R-base-devel \
  ggobi \
  ggobi-devel
