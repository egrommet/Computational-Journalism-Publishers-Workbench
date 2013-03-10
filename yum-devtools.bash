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

sudo yum clean all
sudo rm `find /var/cache/yum/ -name 'timedhosts*'`
sudo yum install -y \
  yum-fastestmirror \
  vim \
  git \
  curl \
  wget \
  lynx \
  aria2 \
  libcurl-devel

# Needed to install guest tools on virtual machines
sudo yum install -y \
  make \
  gcc \

# Needed for packages
  java-1.7.0-openjdk-devel \
  gcc-c++ \
  gcc-gfortran

# R and GGobi from distro!
sudo yum install -y \
  R \
  R-devel \
  ggobi \
  ggobi-devel
