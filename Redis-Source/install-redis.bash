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
export WHERE=http://redis.googlecode.com/files
export VERSION=`curl http://redis.io/download/|grep "2\.6.*tar\.gz"|sed 's/^.*redis-//'|sed 's/\.tar\.gz.*$//'`
export DIR=redis-${VERSION}
export WHAT=${DIR}.tar.gz
rm -f ${WHAT}; curl ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}; tar xf ${WHAT}

pushd ${DIR}
make install
make test
kill -9 `ps -ef|grep redis-server|grep -v grep|awk '{print $2}'`

popd

popd

ldconfig
