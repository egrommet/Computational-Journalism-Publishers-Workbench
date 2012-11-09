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
sudo yum install -y \
  evince \
  gcc-gfortran \
  gcc-c++ \
  readline-devel \
  libXt-devel \
  libXmu-devel \
  java-1.7.0-openjdk-devel \
  tk-devel \
  libtiff-devel \
  icu \
  libicu-devel

# Packages
sudo yum install -y \
  graphviz-devel \
  freeglut-devel \
  fftw-devel \
  gd-devel \
  gsl-devel \
  atlas-devel \
  libcurl-devel \
  wordnet \
  wordnet-devel \
  libsndfile-devel \
  subversion \
  gtk2-devel \
  libxml2-devel \
  libtool-ltdl-devel

# WordNet environment variable
sudo cp wordnet-yum.sh /etc/profile.d/ # set WordNet home
source /etc/profile
set|grep WNHOME
