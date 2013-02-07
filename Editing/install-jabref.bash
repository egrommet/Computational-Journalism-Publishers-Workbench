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

pushd ${HOME}/local/src
rm -fr jabref*
mkdir -p jabref
cd jabref
export VERSION=`curl http://sourceforge.net/projects/jabref/files/|grep \.jar|head -n 1|sed 's/^.*JabRef-//'|sed 's/\.jar.*$//'`
export WHERE="http://downloads.sourceforge.net/project/jabref/jabref/${VERSION}"
export WHAT="JabRef-${VERSION}.jar"
curl -L ${WHERE}/${WHAT} > ${WHAT}
popd

sed "s/VERSION/${VERSION}/" jabref > ${HOME}/local/bin/jabref
chmod +x ${HOME}/local/bin/jabref
ln -sf ${HOME}/local/bin/jabref ${HOME}/local/bin/JabRef
