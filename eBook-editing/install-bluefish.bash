#!/bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

mkdir -p /usr/local/src
pushd /usr/local/src
export VERSION=2.2.3
export WHERE=http://downloads.sourceforge.net/project/bluefish/bluefish/${VERSION}
export DIR=bluefish-${VERSION}
export WHAT=${DIR}.tar.bz2
curl -L ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}
tar xf ${WHAT}
cd ${DIR}
./configure
make
make install
popd
