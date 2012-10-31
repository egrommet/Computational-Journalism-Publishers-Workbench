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

pushd ~/local/src/rstudio-*/build
  cmake \
    -DCMAKE_INSTALL_PREFIX=${HOME}/local \
    -DRSTUDIO_TARGET=Desktop \
    -DCMAKE_BUILD_TYPE=Release ..
  /usr/bin/time make install
popd

sed "s:HOME:${HOME}:" rstudio.desktop \
  > ${HOME}/.local/share/applications/rstudio.desktop
cp rstudio.png ${HOME}/.local/share/pixmaps
