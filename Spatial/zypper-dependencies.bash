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

sudo -H zypper addrepo -cf \
  http://download.opensuse.org/repositories/Application:/Geo/openSUSE_12.3/Application:Geo.repo
sudo -H zypper --gpg-auto-import-keys refresh
sudo -H zypper install -y \
  gdal \
  libgdal-devel \
  libgdal-grass \
  libgeos-devel \
  libgeos-docs \
  grass \
  grass-devel \
  grass-docs \
  netcdf-devel \
  netcdf-doc \
  osm2pgsql \
  postgis \
  postgis-utils \
  proj \
  libproj-devel \
  spatialite-gui \
  spatialite-tools \
  postgresql-devel
