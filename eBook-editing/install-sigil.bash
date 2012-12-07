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

pushd ${HOME}/local/src
  export WHERE=http://sigil.googlecode.com/files
  export SDIR=sigil
  rm -fr ${SDIR}; mkdir -p ${SDIR}
  export VERSION=0.6.1
  export WHAT=Sigil-${VERSION}-Code.zip
  curl -k -L ${WHERE}/${WHAT} > ${WHAT}
  cd ${SDIR}
  unzip ../${WHAT}
  export BDIR=SigilBuild
  rm -fr ${BDIR}
  mkdir -p ${BDIR}
  pushd ${BDIR}
    cmake -G "Unix Makefiles" \
      -DCMAKE_INSTALL_PREFIX=${HOME}/local \
      -DCMAKE_BUILD_TYPE=Release ..
    /usr/bin/time make
    make install
  popd
  
popd

sed "s:HOME:${HOME}:" sigil.desktop > \
  ${HOME}/.local/share/applications/sigil.desktop
