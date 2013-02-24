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

# unixODBC
sudo yum install -y \
  unixODBC \
  unixODBC-devel \
  unixODBC-gui-qt

# R Commander, Rattle and JGR/Deducer
sudo yum install -y \
  tcl-devel \
  tk-devel \
  bwidget \
  freeglut-devel \
  libXt-devel \
  gtk2-devel \
  libxml2-devel

# Rmpi
sudo yum install -y \
  openmpi-devel

./install-Rmpi.bash 2>&1 | tee Rmpi.log
./install-packages.bash 2>&1 | tee packages.log
