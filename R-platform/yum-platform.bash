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
sudo yum install -y \
  R-devel \
  rkward \
  ggobi \
  ggobi-devel

# Compilers
sudo yum install -y \
  make \
  gcc \
  gcc-c++ \
  gcc-gfortran

# unixODBC
sudo yum install -y \
  unixODBC \
  unixODBC-devel \
  unixODBC-gui-qt

# R Commander, Rattle and JGR/Deducer
sudo yum install -y \
  freeglut-devel \
  libXt-devel \
  java-1.7.0-openjdk-devel \
  gtk2-devel \
  libxml2-devel

# Force Boost 1.50 (RStudio won't work with older)
sudo yum install -y \
  boost-devel
