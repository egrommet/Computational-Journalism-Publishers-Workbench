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
export VERSION=`curl http://sourceforge.net/projects/bluefish/files/|grep tar.bz2|head -n 1|sed 's/^.*bluefish-//'|sed 's/.tar.*//'`
export WHERE=http://downloads.sourceforge.net/project/bluefish/bluefish/${VERSION}
export DIR=bluefish-${VERSION}
export WHAT=${DIR}.tar.bz2
curl -L ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}
tar xf ${WHAT}
cd ${DIR}
./configure --prefix=${HOME}/local
/usr/bin/time make
make install
popd

sed "s:HOME:${HOME}:" bluefish.desktop > \
  ${HOME}/.local/share/applications/bluefish.desktop
