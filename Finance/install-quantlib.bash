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
export FILES='http://sourceforge.net/projects/quantlib/files/QuantLib/'
export VERSION=`curl -s ${FILES}|grep tar\.gz|head -n 1|sed 's/^.*QuantLib-//'|sed 's/\.tar\.gz.*$//'`
echo $VERSION
export DIR=QuantLib-${VERSION}
export WHAT=${DIR}.tar.gz
export \
  WHERE=http://downloads.sourceforge.net/project/quantlib/QuantLib/${VERSION}
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
cd ${DIR}
autoreconf --verbose
./configure
/usr/bin/time make
echo "Installing QuantLib"
echo "You will need to authenticate"
sleep 4
sudo make install
popd

cp quantlib.conf /etc/ld.so.conf.d/
/sbin/ldconfig
