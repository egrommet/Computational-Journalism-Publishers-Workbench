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
  libsndfile1-dev \
  wordnet \
  wordnet-base \
  wordnet-dev \
  wordnet-grind \
  wordnet-gui \
  wordnet-sense-index

# R Java interface is hosed with both Java 6 and 7 -- nuke 6!
apt-get remove -y \
  icedtea-6-jre-cacao \
  icedtea-6-jre-jamvm \
  openjdk-6-dbg \
  openjdk-6-demo \
  openjdk-6-doc \
  openjdk-6-jdk \
  openjdk-6-jre \
  openjdk-6-jre-headless \
  openjdk-6-jre-lib \
  openjdk-6-jre-zero \
  openjdk-6-source
