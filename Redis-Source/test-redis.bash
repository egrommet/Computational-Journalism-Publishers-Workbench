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

export VERSION=`curl http://redis.io/download/|grep '\.tar\.gz'|head -n 1|sed 's/^.*redis-'//|sed 's/\.tar\.gz.*$//'`
export DIR=redis-${VERSION}

pushd ${HOME}/local/src/${DIR}
make test
popd
