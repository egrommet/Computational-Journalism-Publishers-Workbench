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

source ~/.bash_profile
export VERSION=`curl -L http://www.rstudio.com/ide/download/server|grep github.*tarball|sed 's/^.*tarball\///'|sed 's/".*$//'`

echo "Fetching RStudio ${VERSION}"
export HERE=`pwd` # save pointer to where the hacked files are

# get source tarball from Github
pushd ${HOME}/local/src
  echo "Removing old RStudio source code"
  echo "You will need to authenticate"
  sleep 4
  sudo rm -fr rstudio*
  curl -k -L https://github.com/rstudio/rstudio/tarball/${VERSION} > rstudio.tgz
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
  popd

popd