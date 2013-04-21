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

export WHERE=http://cran.fhcrc.org/src/base/R-3
export VERSION=3.0.0
export DIR=R-${VERSION}
export WHAT=${DIR}.tar.gz
export HERE=`pwd`

mkdir -p /usr/local/src

pushd /usr/local/src
rm -fr R-* # ditch all versions of R past!
curl ${WHERE}/${WHAT} > ${WHAT}
tar xf ${WHAT}

pushd ${DIR}
tools/rsync-recommended # update recommended packages

# configure
./configure --help # save the configure help!
export R_PAPERSIZE='letter'
export R_BROWSER=`which firefox`
./configure \
  --prefix=/usr/local \
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
  --with-jpeglib \
  --with-libtiff \
  --with-system-xz \
  --with-recommended-packages \
  --with-ICU \
  --with-x
/usr/bin/time make
make install
ldconfig
popd

popd
