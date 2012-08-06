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
apt-get install -y \
  curl \
  vim \
  vim-gtk \
  gfortran \
  g++ \
  openjdk-7-jdk \
  libreadline-gplv2-dev \
  libxt-dev \
  libx11-dev \
  libxmu-dev \
  libpango1.0-dev \
  libcairo2-dev \
  tk-dev \
  libtiff4-dev \
  texinfo \
  libicu-dev

# ggobi
apt-get remove -y graphviz-dev
apt-get autoremove -y
apt-get install -y \
  libgtk2.0-dev \
  libxml2-dev \
  libltdl-dev

# Packages
apt-get install -y \
  freeglut3-dev \
  libfftw3-dev \
  libgd2-xpm-dev \
  libgsl0-dev \
  libsndfile1-dev
