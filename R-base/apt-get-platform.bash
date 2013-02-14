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
sudo apt-get install -y \
  rkward \
  ggobi

# unixODBC
../common/authenticate.bash
sudo apt-get install -y \
  unixodbc \
  unixodbc-dev \
  unixodbc-bin

# Headers for package building
../common/authenticate.bash
sudo apt-get install -y \
  libcurl4-gnutls-dev \
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
  libicu-dev \
  libgmp-dev \
  libmpfr-dev \
  graphviz-dev \
  subversion \
  freeglut3-dev \
  libgd2-xpm-dev \
  libgsl0-dev \
  libtool \
  libgtk2.0-dev \
  libxml2-dev \
  libltdl-dev \
  libatlas-dev \
  liblapack-dev
