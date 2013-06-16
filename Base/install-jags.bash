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

mkdir -p /usr/local/src

pushd /usr/local/src
export WHERE=http://downloads.sourceforge.net/project/mcmc-jags/JAGS/3.x/Source
export VERSION=3.3.0
export DIR=JAGS-${VERSION}
export WHAT=${DIR}.tar.gz
curl -L ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}
tar xf ${WHAT}
cd ${DIR}
export ATLAS=`cat /etc/ld.so.conf.d/atlas-*.conf`
./configure
export NUMCPUS=`grep -c '^processor' /proc/cpuinfo`
/usr/bin/time make -j$NUMCPUS --load-average=$NUMCPUS
make install
popd

cp JAGS.conf /etc/ld.so.conf.d/
ldconfig
