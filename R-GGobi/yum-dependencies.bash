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
yum install -y \
  vim-enhanced \
  vim-X11 \
  gcc-gfortran \
  gcc-c++ \
  java-1.7.0-openjdk-devel \
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
yum remove -y graphviz-devel
yum install -y \
  gtk2-devel \
  libxml2-devel \
  libtool-ltdl-devel

# Packages
yum install -y \
  freeglut-devel \
  fftw-devel \
  gd-devel \
  gsl-devel \
  libsndfile-devel
