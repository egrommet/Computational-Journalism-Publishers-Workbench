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

pushd ~/local/src
export DIR=ggobi-2.1.9
export WHAT=${DIR}.tar.bz2
export WHERE=http://ggobi.org/downloads
curl ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}
tar xf ${WHAT}
cd ${DIR}
export CFLAGS='-O2 -pipe -march=native'
export FFLAGS='-O2 -pipe -march=native'
export CXXFLAGS='-O2 -pipe -march=native'
export FCFLAGS='-O2 -pipe -march=native'
./configure --with-all-plugins --prefix=${HOME}/local
/usr/bin/time make 
make ggobirc
make install
popd

sed "s:HOME:${HOME}:" ggobi.desktop \
  > ~/.local/share/applications/ggobi.desktop
cp ggobi.png ~/.local/share/pixmaps/
