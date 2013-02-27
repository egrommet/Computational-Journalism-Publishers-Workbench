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

# unixODBC
sudo apt-get install -y \
  unixodbc \
  unixodbc-bin \
  unixodbc-dev

# R Commander, Rattle and JGR/Deducer
sudo apt-get install -y \
  tcl-dev \
  tk-dev \
  bwidget \
  freeglut3-dev \
  libgtk2.0-dev \
  libxml2-dev

./install-packages.bash
./install-rstudio-source.bash
./install-rstudio-desktop.bash
