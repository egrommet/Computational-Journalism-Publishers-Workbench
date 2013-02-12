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

../common/authenticate.bash
sudo yum install -y \
  boost-devel \
  gdal \
  gdal-devel \
  gdal-doc \
  geos \
  geos-devel \
  grass \
  netcdf-devel \
  osm2pgsql \
  pgRouting \
  postgis \
  postgis-docs \
  postgis-utils \
  proj \
  proj-devel \
  proj-epsg \
  qgis \
  qgis-grass \
  spatialite-gui \
  spatialite-tools
