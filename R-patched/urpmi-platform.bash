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
sudo urpmi --auto \
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
sudo urpme --auto \
  java-1.6.0-openjdk-devel \
  java-1.6.0-openjdk

# Packages
sudo urpmi --auto \
  libgraphviz-devel \
  libfftw-devel \
  libgd-devel \
  libgsl-devel \
  libsndfile-devel \
  libtool \
  libcairo-devel \
  gtk2-devel \
  libzlib-devel \
  libfreeglut-devel \
  libltdl-devel \
  libcanberra-gtk-devel \
  libxml2-devel \
  libgmp-devel \
  libmpfr-devel \
  libgsl-devel
