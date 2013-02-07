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

#export PATH=$PATH:/usr/lib/qt4/bin
pushd ${HOME}/local/src
  export WHERE=ftp://ftp.lyx.org/pub/lyx/stable/2.0.x
  export VERSION=`curl http://www.lyx.org/Download|grep -e 'tar.xz'|sed 's/^.*lyx-//'|sed 's/\.tar.*$//'`
  export DIR=lyx-${VERSION}
  export WHAT=${DIR}.tar.xz
  curl ${WHERE}/${WHAT} > ${WHAT}
  rm -fr ${DIR}
  tar xf ${WHAT}
  pushd ${DIR}
    ./configure --prefix=${HOME}/local
    /usr/bin/time make
    make install
  popd
  
popd
sed "s:HOME:${HOME}:" lyx.desktop \
  > ${HOME}/.local/share/applications/lyx.desktop
