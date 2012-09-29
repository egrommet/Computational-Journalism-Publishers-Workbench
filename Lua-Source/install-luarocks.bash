#! /bin/bash -v
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
pushd /usr/local/src/
export WHERE=http://luarocks.org/releases
export VERSION=2.0.11
export DIR=luarocks-${VERSION}
export WHAT=${DIR}.tar.gz
rm -f ${WHAT}; curl -L ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}; tar xf ${WHAT}
pushd ${DIR}
./configure --with-lua=/usr/local
make
make install
popd

popd
