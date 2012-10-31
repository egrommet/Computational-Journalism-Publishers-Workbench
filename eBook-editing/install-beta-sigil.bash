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
  export SDIR=sigil
  rm -fr ${SDIR}
  git clone https://code.google.com/p/sigil/
  export BDIR=SigilBuild
  rm -fr ${BDIR}
  mkdir -p ${BDIR}
  pushd ${BDIR}
    cmake -G "Unix Makefiles" \
      -DCMAKE_INSTALL_PREFIX=${HOME}/local \
      -DCMAKE_BUILD_TYPE=Release ../${SDIR}
    /usr/bin/time make
    make install
  popd
  
popd
