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

# R-compiled
urpmi --auto --no-suggests \
  gcc-gfortran \
  gcc-c++ \
  java-1.7.0-openjdk-devel \
  libx11_6-devel \
  libxt-devel \
  libxmu6-devel \
  libreadline-devel \
  libpango1.0-devel \
  libtk-devel \
  libtiff-devel \
  texinfo \
  libicu-devel

# Drop any Java 1.6.0!
urpme --auto --auto-orphans \
  java-1.6.0-openjdk-devel \
  java-1.6.0-openjdk

# Packages
urpmi --auto --no-suggests \
  libcurl-devel \
  libfftw-devel \
  libgd-devel \
  libgsl-devel \
  libsndfile-devel \
  wordnet \
  libwordnet-devel

# WordNet environment variable
cp wordnet-urpmi.sh /etc/profile.d/ # set WordNet home
source /etc/profile
set|grep WNHOME
