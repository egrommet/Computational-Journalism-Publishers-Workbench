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
sudo yum install -y \
  vim \
  git \
  git-gui \
  gitk \
  curl \
  wget \
  lynx \
  libcurl-devel \
  perl-Padre

# Special goodies for Fedora :-)
sudo yum install -y \
  @development-tools \
  fedora-packager \
  fedora-review \
  mock \
  R2spec

# Needed to build RStudio
sudo yum install -y \
  qtwebkit-devel \
  make \
  gcc \
  gcc-c++ \
  gcc-gfortran \
  cmake \
  rpmdevtools \
  libuuid-devel \
  openssl-devel \
  bzip2-devel \
  zlib-devel \
  pam-devel \
  boost-devel \
  pango-devel \
  java-1.7.0-openjdk-devel \
  ant \
  xml-commons-apis

# Numeric libraries
sudo yum install -y \
  gsl-devel \
  gmp-devel \
  mpfr-devel
