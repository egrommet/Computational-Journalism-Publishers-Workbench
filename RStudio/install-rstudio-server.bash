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

source /etc/profile
export PATH=/usr/local/bin:$PATH
which R

pushd /usr/local/src/rstudio-*/build
  cmake \
    -DRSTUDIO_TARGET=Server \
    -DCMAKE_BUILD_TYPE=Release ..
  /usr/bin/time make install
popd