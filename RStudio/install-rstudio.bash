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
export HERE=`pwd` # save pointer to where the hacked files are
mkdir -p /usr/local/src 

# get source tarball from Github
pushd /usr/local/src
  rm -fr rstudio*
  curl -k -L https://github.com/rstudio/rstudio/tarball/v0.96.316 > rstudio.tgz
  tar xf rstudio.tgz
  pushd rstudio-*
    pushd dependencies/common
      for i in gwt dictionaries mathjax
      do
        patch -b ./install-$i ${HERE}/install-$i.patch
        /usr/bin/time ./install-$i
      done
    popd
    patch -b src/gwt/build.xml ${HERE}/build.xml.patch
    mkdir build
    pushd build

      # Desktop
      cmake \
        -DRSTUDIO_TARGET=Desktop \
	-DCMAKE_BUILD_TYPE=Release ..
      /usr/bin/time make install

    popd
  popd
popd
