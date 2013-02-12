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
sudo apt-get install -y \
  build-essential \
  pkg-config \
  fakeroot \
  cmake \
  libboost1.50-all-dev \
  patch \
  libqtwebkit-dev \
  uuid-dev \
  ant \
  libssl-dev \
  libbz2-dev \
  zlib1g-dev \
  libpam-dev \
  libapparmor1  \
  apparmor-utils \
  gufw \
  unzip
