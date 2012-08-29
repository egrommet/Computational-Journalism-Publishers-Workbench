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
export WHERE=http://luajit.org/download
export VERSION=2.0.0-beta10
export DIR=LuaJIT-${VERSION}
export WHAT=${DIR}.tar.gz
rm -f ${WHAT}; curl ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}; tar xf ${WHAT}

pushd ${DIR}
make
make install
ln -sf /usr/local/bin/luajit-2.0.0-beta10 /usr/local/bin/luajit
popd

popd
