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

# RKWard and GGobi from distro!
../common/authenticate.bash
sudo yum install -y \
  R-devel \
  rkward \
  ggobi

# unixODBC
../common/authenticate.bash
sudo yum install -y \
  unixODBC \
  unixODBC-devel \
  unixODBC-gui-qt

# Headers for package building
../common/authenticate.bash
sudo yum install -y \
  antiword \
  ggobi-devel \
  texinfo \
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
  libicu-devel \
  graphviz-devel \
  freeglut-devel \
  fftw-devel \
  gd-devel \
  gsl-devel \
  atlas-devel \
  libcurl-devel \
  libsndfile-devel \
  subversion \
  gtk2-devel \
  libxml2-devel \
  libtool-ltdl-devel \
  gmp-devel \
  mpfr-devel
