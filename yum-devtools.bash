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

common/authenticate.bash 'Installing developer tools'
sudo -H yum clean all
sudo -H rm `find /var/cache/yum/ -name 'timedhosts*'`
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
  make \
  gcc \
  kernel-devel \
  dkms

# Needed for packages
sudo -H yum install -y \
  java-1.7.0-openjdk-devel \
  gcc-c++ \
  gcc-gfortran

# R and GGobi from distro!
sudo -H yum install -y \
  R \
  R-devel \
  ggobi \
  ggobi-devel
