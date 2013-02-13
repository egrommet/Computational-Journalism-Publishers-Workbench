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

echo "Enabling repositories"
common/authenticate.bash
sudo yum-config-manager --enable \*
sudo yum-config-manager --enable \*debuginfo\*
sudo yum-config-manager --disable \*source\*
sudo yum-config-manager --disable \*testing\*

echo "Installing basic development tools"
common/authenticate.bash
sudo yum install -y \
  patch \
  curl \
  wget \
  mlocate \
  make \
  dkms \
  kernel-tools \
  kernel-devel \
  kernel-PAE-devel \
  gcc \
  vim \
  net-tools \
  git-all \
  git-annex \
  git-annex-docs

# Boost, cmake and Qt
../common/authenticate.bash
sudo yum install -y \
  boost-devel \
  cmake \
  qt-devel \
  qtwebkit-devel
