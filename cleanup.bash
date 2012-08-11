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

# recursive cleanup script
common/cleanup.bash # clean up here first

for i in */cleanup.bash
do
  j=`echo ${i} | sed 's/cleanup.bash//'`
  pushd ${j}
  ./cleanup.bash
  popd
done
