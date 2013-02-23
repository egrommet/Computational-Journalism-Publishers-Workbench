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

echo "Installing basic development tools"
sudo apt-get install -y \
  vim \
  git \
  git-gui \
  gitk \
  curl \
  libcurl4-gnutls-dev \
  padre

# Needed to build RStudio
sudo apt-get install -y \
  libboost1.50-all-dev \
  libqtwebkit-dev \
  build-essential \
  pkg-config \
  fakeroot \
  cmake \
  uuid-dev \
  libssl-dev \
  libbz2-dev \
  zlib1g-dev \
  libpam-dev \
  libapparmor1 \
  apparmor-utils \
  libpango1.0-dev \
  openjdk-7-jdk \
  ant \
  unzip

# Numeric libraries
sudo apt-get install -y \
  libgsl0-dev \
  libgmp-dev \
  libmpfr-dev
