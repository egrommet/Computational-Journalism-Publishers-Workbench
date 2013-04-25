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

# ugly workaround for -flto crash in 'maps' on Precise Pangolin
mkdir -p ~/.R
cp `R RHOME`/etc/Makeconf ~/.R/Makevars
sed -i 's/^LTO =.*$/LTO = /' ~/.R/Makevars
PRECISE=`uname -v|grep precise|wc -l`
if [ $PRECISE -gt 0 ]
then
  echo "Installing on 'precise' - engaging 'maps' workaround"
else
  rm -f ~/.R/Makevars
fi

../common/authenticate.bash "Installing 'maps' in site library"
export PATH=${PATH}:/usr/local/bin
R --no-save --no-restore < load-maps.R

# remove workaround!
rm -f ~/.R/Makevars
