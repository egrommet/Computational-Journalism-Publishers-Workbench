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

export VERSION=`curl -L http://www.rstudio.com/ide/download/server|grep github.*tarball|sed 's/^.*tarball\///'|sed 's/".*$//'`

echo "Fetching RStudio ${VERSION}"
export HERE=`pwd` # save pointer to where the hacked files are

# make patch file
sed "s:HOME:${HOME}:" CMakeLists.txt.patch.base > CMakeLists.txt.patch

# get source tarball from Github
pushd ${HOME}/local/src
  rm -fr rstudio*
  curl -k -L https://github.com/rstudio/rstudio/tarball/${VERSION} > rstudio.tgz
  tar xf rstudio.tgz

  pushd rstudio-*

    pushd dependencies/common
      for i in gwt dictionaries mathjax boost
      do
        patch -b ./install-$i ${HERE}/install-$i.patch
        /usr/bin/time ./install-$i
      done
    popd

    patch -b src/gwt/build.xml ${HERE}/build.xml.patch
    patch -b src/cpp/CMakeLists.txt ${HERE}/CMakeLists.txt.patch
    mkdir build
  popd

popd
