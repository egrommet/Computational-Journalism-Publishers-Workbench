#!/bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

echo 'Installing graphviz-dev(el)'
echo 'You will need to authenticate'
if [ -e "/usr/bin/apt-get" ]
then
  sudo apt-get install -y libgraphviz-dev
elif [ -e "/usr/bin/yum" ]
then
  sudo yum install -y graphviz-devel
elif [ -e "/usr/bin/zypper" ]
then
  sudo zypper install -y graphviz-devel
elif [ -e "/usr/sbin/urpmi" ]
then
  sudo urpmi --auto libgraphviz-devel
fi
