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

source ~/.bash_profile
../common/install-platform.bash # OS-level packages

sudo mkdir -p `R RHOME`/site-library # make a place for our stuff
cp ../common/Rprofile ~/.Rprofile

./install-packages.bash 2>&1 | tee packages.log
echo "Installing RStudio source code"
echo "You will need to authenticate"
sleep 4
sudo ./install-rstudio-source.bash 2>&1 | tee source.log
echo "Installing RStudio Desktop"
echo "You will need to authenticate"
sleep 4
sudo ./install-rstudio-desktop.bash 2>&1 | tee desktop.log
