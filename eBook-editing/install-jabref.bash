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
curl -L http://downloads.sourceforge.net/project/jabref/jabref/2.8.1/JabRef-2.8.1.jar \
  > JabRef-2.8.1.jar
popd

cp jabref /usr/local/bin
