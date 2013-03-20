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

../common/authenticate.bash "Installing R packages in site library"
if [ -e "/usr/bin/zypper" ]
then
  unset JAVA_HOME
  R CMD javareconf
  xhost +
  export DISPLAY=:0.0
fi
/usr/bin/time R --no-save --no-restore < load-packages.R
