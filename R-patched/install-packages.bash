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

xhost +
source /etc/profile # reload environment variables
export DISPLAY=:0.0
export PATH=$PATH:/usr/local/bin
R CMD javareconf
/usr/bin/time R --no-save --no-restore < load-packages.R

cp Rcmdr.desktop /usr/local/share/applications
cp Rcmdr.svg /usr/local/share/pixmaps
