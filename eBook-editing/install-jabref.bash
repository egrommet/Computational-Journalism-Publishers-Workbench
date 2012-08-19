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
rm -fr jabref*
mkdir -p jabref
cd jabref
export VERSION=`curl http://sourceforge.net/projects/jabref/files/|grep \.jar|head -n 1|sed 's/^.*JabRef-//'|sed 's/\.jar.*$//'`
export WHERE="http://downloads.sourceforge.net/project/jabref/jabref/${VERSION}"
export WHAT="JabRef-${VERSION}.jar"
curl -L ${WHERE}/${WHAT} > ${WHAT}
popd

sed "s/VERSION/${VERSION}/" jabref > /usr/local/bin/jabref
chmod +x /usr/local/bin/jabref
ln -sf /usr/local/bin/jabref /usr/local/bin/JabRef
