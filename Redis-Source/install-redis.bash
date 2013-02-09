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

export HERE=`pwd`
pushd ${HOME}/local/src/
export WHERE=http://redis.googlecode.com/files
export VERSION=`curl http://redis.io/download/|grep '\.tar\.gz'|head -n 1|sed 's/^.*redis-'//|sed 's/\.tar\.gz.*$//'`
rm -fr redis-*
export DIR=redis-${VERSION}
export WHAT=${DIR}.tar.gz
curl ${WHERE}/${WHAT} > ${WHAT}
tar xf ${WHAT}
cd ${DIR}
patch -b src/redis-benchmark.c ${HERE}/redis-benchmark.patch
make
make test
sudo make install
popd
