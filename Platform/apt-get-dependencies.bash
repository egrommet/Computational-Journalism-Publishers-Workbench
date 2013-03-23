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
sudo -H apt-get install -y \
  unixodbc \
  unixodbc-bin \
  unixodbc-dev

# Numeric libraries
sudo -H apt-get install -y \
  libgsl0-dev \
  libgmp-dev \
  libmpfr-dev \
  libatlas-dev \
  liblapack-dev \
  libboost-all-dev

# GUI tools
sudo -H apt-get install -y \
  tcl-dev \
  tk-dev \
  bwidget \
  freeglut3-dev \
  libgtk2.0-dev \
  libxml2-dev

# RStudio Desktop
sudo -H apt-get install -y \
  cmake \
  libqtwebkit-dev \
  uuid-dev \
  ant

# PostgreSQL and MySQL
sudo -H apt-get install -y \
  pgadmin3 \
  postgresql \
  postgresql-client \
  postgresql-contrib \
  postgresql-doc \
  postgresql-plperl \
  postgresql-plpython \
  libpq-dev \
  postgresql-server-dev-all \
  libmysqlclient-dev

# wxMaxima
sudo -H apt-get install -y \
  wxmaxima
