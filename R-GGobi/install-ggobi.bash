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

source /etc/profile # grab TexLive
mkdir -p /usr/local/src

pushd /usr/local/src
export DIR=ggobi-2.1.9
export WHAT=${DIR}.tar.bz2
export WHERE=http://ggobi.org/downloads
rm -f ${WHAT} 
wget ${WHERE}/${WHAT}
rm -fr ${DIR}
tar xf ${WHAT}

pushd ${DIR}
./configure --with-all-plugins
/usr/bin/time make 
make install
make ggobirc
mkdir -p /etc/xdg/ggobi
cp ggobirc /etc/xdg/ggobi/ggobirc
popd

popd
cp ggobi.conf /etc/ld.so.conf.d/
ldconfig
cp ggobi.sh /etc/profile.d/
source /etc/profile
