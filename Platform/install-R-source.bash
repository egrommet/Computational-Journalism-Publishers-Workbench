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

export HERE=`pwd`
mkdir -p /usr/local/src

pushd /usr/local/src
rm -fr R-* # ditch all versions of R past!
export WHERE=http://cran.rstudio.com/src/base
export WHAT=R-latest.tar.gz
curl ${WHERE}/${WHAT} > ${WHAT}
export DIR=`tar tf ${WHAT} | head -n 1`
echo ${DIR}
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
export NUMCPUS=`grep -c '^processor' /proc/cpuinfo`
/usr/bin/time nice make -j$NUMCPUS --load-average=$NUMCPUS
make install
export PATH=/usr/local/bin:${PATH}
echo `R RHOME`/lib > /etc/ld.so.conf.d/R.conf
ldconfig
popd

popd
