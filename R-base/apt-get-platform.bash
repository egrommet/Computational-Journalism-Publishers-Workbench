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
sudo apt-get install -y \
  rkward \
  ggobi

# MOAR R
sudo apt-get install -y \
  r-base-dev \
  r-doc-html \
  r-doc-info \
  r-doc-pdf \
  r-base-html \
  r-mathlib

# unixODBC
sudo apt-get install -y \
  unixodbc \
  unixodbc-dev \
  unixodbc-bin
# Headers for package building
sudo apt-get install -y \
  antiword \
  evince \
  gfortran \
  texinfo \
  openjdk-7-jdk \
  tcl8.5 \
  tk8.5 \
  tcl8.5-dev \
  tk8.5-dev \
  tcl8.5-doc \
  tk8.5-doc \
  libtiff4-dev \
  libxmu-dev \
  libicu-dev

# Packages
sudo apt-get install -y \
  libgmp-dev \
  libmpfr-dev \
  graphviz-dev \
  subversion \
  libcurl4-openssl-dev \
  freeglut3-dev \
  libfftw3-dev \
  libgd2-xpm-dev \
  libgsl0-dev \
  libsndfile1-dev \
  libtool \
  libgtk2.0-dev \
  libxml2-dev \
  libltdl-dev \
  libatlas-dev \
  liblapack-dev
