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
  libboost-all-dev \
  libfftw3-dev \
  libsndfile1-dev

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

# SQLite and PostgreSQL
sudo -H apt-get install -y \
  libsqlite3-dev \
  sqlite3 \
  sqlite3-doc \
  sqlite \
  sqlite-doc \
  sqliteman \
  sqliteman-doc \
  pgadmin3 \
  postgresql \
  postgresql-client \
  postgresql-contrib \
  postgresql-doc \
  postgresql-plperl \
  postgresql-plpython \
  libpq-dev \
  postgresql-server-dev-all \
  odbc-postgresql

# wxMaxima
sudo -H apt-get install -y \
  wxmaxima

# Pandoc
sudo -H apt-get install -y \
  pandoc

# Graphics task view
sudo -H apt-get install -y \
  proj-bin \
  proj-data \
  proj-ps-doc \
  libproj-dev \
  dans-gdal-scripts \
  gdal-bin \
  libgdal-dev \
  libgdal-doc

# Dexy
sudo -H pip install dexy

# Editing
sudo -H add-apt-repository -y ppa:rgibert/ebook # Sigil lives here
sudo -H apt-get update
sudo -H apt-get install -y \
  calibre \
  lyx \
  sigil

# Spatial
sudo -H apt-get install -y \
  qlandkartegt \
  libgeos-dev \
  libgeos-doc \
  grass \
  grass-dev \
  grass-dev-doc \
  grass-doc \
  grass-gui \
  libnetcdf-dev \
  netcdf-bin \
  netcdf-doc \
  osm2pgsql \
  postgis \
  imposm \
  gpx2shp \
  libqgis-dev \
  qgis \
  qgis-api-doc \
  qgis-mapserver \
  qgis-plugin-grass \
  qgis-providers \
  librasterlite-dev \
  libspatialite-dev \
  rasterlite-bin \
  spatialite-bin \
  spatialite-gui \
  libsaga \
  libsaga-dev \
  saga

# Natural Language Processing
sudo -H apt-get install -y \
  subversion \
  libraptor2-doc \
  libraptor2-dev \
  raptor2-utils \
  python-nltk \
  wordnet \
  wordnet-base \
  wordnet-dev \
  wordnet-grind \
  wordnet-gui \
  wordnet-sense-index

# Social Network Analysis
sudo -H apt-get install -y \
  python-networkx \
  python-networkx-doc

# Building R from source
sudo -H apt-get install -y \
  texlive-fonts-extra \
  libtiff4-dev \
  libreadline-dev \
  tcl-dev \
  tk-dev \
  libjpeg-dev \
  liblzma-dev \
  libbz2-dev \
  texinfo
