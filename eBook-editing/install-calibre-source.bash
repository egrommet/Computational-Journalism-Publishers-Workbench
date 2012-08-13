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

export WHERE=http://calibre-ebook.googlecode.com/files
export VERSION=0.8.64
export WHAT=calibre-${VERSION}.tar.xz
export DIR=calibre

mkdir -p /usr/local/src
pushd /usr/local/src
curl -L ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}
tar xf ${WHAT}

pushd ${DIR}
mkdir -p /usr/local/lib/python2.7/site-packages
python setup.py install --prefix=/usr/local
popd

popd
