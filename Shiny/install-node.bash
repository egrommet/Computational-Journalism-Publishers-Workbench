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

mkdir -p ~/local/src
pushd ~/local/src
export DIR=`curl -s nodejs.org/ | grep '.tar.gz' | head -n 1 | \
  sed 's/^.*href=.*node/node/' | sed 's/.tar.gz.*$//'`
export WHAT=${DIR}.tar.gz
export WHERE=http://nodejs.org/dist/latest
rm -f ${WHAT}
curl ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}
tar xf ${WHAT}

pushd ${DIR}
./configure
make
sudo make install
sudo /sbin/ldconfig
popd

popd
