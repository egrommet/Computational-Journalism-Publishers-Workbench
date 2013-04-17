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
  atlas-devel \
  lapack-devel \
  boost-devel

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

# SQLite and PostgreSQL
sudo -H yum install -y \
  sqlite \
  sqliteman \
  sqlite-devel \
  sqlite-doc \
  pgadmin3 \
  postgresql \
  postgresql-devel \
  postgresql-contrib \
  postgresql-docs \
  postgresql-plperl \
  postgresql-plpython \
  postgresql-server \
  postgresql-odbc

# wxMaxima
sudo -H yum install -y \
  wxMaxima

# Pandoc
sudo -H yum install -y \
  pandoc \
  pandoc-pdf

# Graphics task view
sudo -H yum install -y \
  gdal \
  gdal-devel \
  gdal-doc \
  proj \
  proj-devel \
  proj-epsg

# Dexy
sudo -H python-pip install dexy

# Sigil
sudo -H yum install -y \
  sigil
