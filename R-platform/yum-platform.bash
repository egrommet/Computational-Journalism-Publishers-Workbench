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
sudo -H yum install -y \
  unixODBC \
  unixODBC-devel \
  unixODBC-gui-qt

# Numeric libraries
sudo -H yum install -y \
  gsl-devel \
  gmp-devel \
  mpfr-devel \
  atlas-devel

# GUI tools
sudo -H yum install -y \
  bwidget \
  freeglut-devel \
  libXt-devel

# RStudio source
sudo -H yum install -y \
  patch

# RStudio Desktop
sudo -H yum install -y \
  libuuid-devel \
  qt-devel \
  qtwebkit-devel \
  ant \
  cmake

# PostgreSQL
sudo -H yum install -y \
  pgadmin3 \
  postgresql \
  postgresql-devel \
  postgresql-contrib \
  postgresql-docs \
  postgresql-plperl \
  postgresql-plpython \
  postgresql-server
