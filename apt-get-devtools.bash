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
common/authenticate.bash
sudo apt-get install -y \
  git-cola \
  git-doc \
  git-man \
  git-all \
  git-annex \
  fdutils \
  linux-doc \
  linux-source \
  linux-tools \
  cpufrequtils \
  patch \
  curl \
  wget \
  make \
  dkms \
  build-essential \
  gcc \
  vim

# Boost, cmake and Qt
common/authenticate.bash
sudo apt-get install -y \
  cmake \
  libboost1.50-all-dev \
  libboost1.50-doc \
  qt4-dev-tools \
  libqtwebkit-dev
