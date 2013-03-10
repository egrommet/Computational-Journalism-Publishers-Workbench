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

# unixODBC
sudo apt-get install -y \
  unixodbc \
  unixodbc-bin \
  unixodbc-dev

# Numeric libraries
sudo apt-get install -y \
  libgsl0-dev \
  libgmp-dev \
  libmpfr-dev

# GUI tools
sudo apt-get install -y \
  openjdk-7-jdk \
  tcl-dev \
  tk-dev \
  bwidget \
  freeglut3-dev \
  libgtk2.0-dev \
  libxml2-dev

# GUIs and packages
./install-packages.bash 2>&1 | tee packages.log

# RStudio source
./install-rstudio-source.bash

# RStudio Desktop
sudo apt-get install -y \
  cmake \
  libboost1.50-all-dev \
  libqtwebkit-dev \
  uuid-dev \
  ant
./install-rstudio-desktop.bash
