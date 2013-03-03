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

# R and GGobi from distro!
sudo yum install -y \
  R \
  R-devel \
  ggobi \
  ggobi-devel

# unixODBC
sudo yum install -y \
  unixODBC \
  unixODBC-devel \
  unixODBC-gui-qt

# Numeric libraries
sudo yum install -y \
  gsl-devel \
  gmp-devel \
  mpfr-devel \
  atlas-devel

# GUI tools
sudo yum install -y \
  bwidget \
  freeglut-devel \
  libXt-devel

# GUIs and packages
./install-packages.bash 2>&1 | tee packages.log

# RStudio source
sudo yum install -y \
  patch
./install-rstudio-source.bash

# RStudio Desktop
sudo yum install -y \
  boost-devel \
  libuuid-devel \
  qt-devel \
  qtwebkit-devel \
  ant \
  cmake
./install-rstudio-desktop.bash
