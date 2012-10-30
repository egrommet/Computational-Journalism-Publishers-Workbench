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

export WHERE=ftp://ftp.stat.math.ethz.ch/Software/R
export WHAT=R-patched.tar.bz2

pushd ${HOME}/local/src
curl ${WHERE}/${WHAT} > ${WHAT}
rm -fr R-patched R-beta R-rc
tar xf ${WHAT}

if [ -e "R-rc" ]
then
  pushd R-rc
elif [ -e "R-beta" ]
then
  pushd R-beta
else
  pushd R-patched
fi

export R_PAPERSIZE='letter'
export CFLAGS='-O2 -pipe -march=native'
export FFLAGS='-O2 -pipe -march=native'
export CXXFLAGS='-O2 -pipe -march=native'
export FCFLAGS='-O2 -pipe -march=native'
#mkdir -p ~/R/library; export R_LIBS_USER="~/R/library"
./configure \
  --prefix=${HOME}/local \
  --enable-R-profiling \
  --enable-R-shlib \
  --enable-BLAS-shlib \
  --enable-lto \
  --enable-byte-compiled-packages \
  --enable-openmp \
  --enable-largefile \
  --enable-nls \
  --with-readline \
  --with-tcltk \
  --with-cairo \
  --with-libpng \
  --with-system-xz \
  --with-recommended-packages \
  --with-ICU \
  --with-x
/usr/bin/time make
make install
popd

popd
