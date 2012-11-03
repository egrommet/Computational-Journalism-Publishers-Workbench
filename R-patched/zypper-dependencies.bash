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
sudo zypper install -y \
  evince \
  gcc-fortran \
  gcc-c++ \
  java-1_7_0-openjdk-devel \
  readline-devel \
  tk-devel \
  libtiff-devel \
  texinfo \
  libXmu-devel \
  libXScrnSaver-devel \
  libicu-devel

# Packages
sudo zypper install -y \
  graphviz-devel \
  libcurl-devel \
  freeglut-devel \
  fftw3-devel \
  gd-devel \
  gsl-devel \
  libsndfile-devel \
  wordnet \
  wordnet-devel \
  libtool \
  gtk2-devel \
  libxml2-devel

# WordNet environment variable
sudo cp wordnet-zypper.sh /etc/profile.d/ # set WordNet home
source /etc/profile
set|grep WNHOME
