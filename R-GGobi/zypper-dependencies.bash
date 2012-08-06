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
zypper install -y \
  epdfview \
  vim-enhanced \
  gvim \
  make \
  gcc-fortran \
  gcc-c++ \
  java-1_7_0-openjdk-devel \
  readline-devel \
  libXt-devel \
  libX11-devel \
  libXmu-devel \
  pango-devel \
  cairo-devel \
  tk-devel \
  libtiff-devel \
  texinfo \
  libicu-devel

# ggobi
zypper remove -y graphviz-devel
zypper install -y \
  gtk2-devel \
  libxml2-devel

# Packages
zypper install -y \
  freeglut-devel \
  fftw3-devel \
  gd-devel \
  gsl-devel \
  libsndfile-devel
