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
install-dependencies.bash # OS-level packages

sudo -H mkdir -p `R RHOME`/site-library # make a place for our stuff
cp ../common/Rprofile ~/.Rprofile

../common/authenticate.bash "Installing platform R packages"
./install-packages.bash 2>&1 | tee packages.log
../common/authenticate.bash "Installing RStudio source code"
sudo -H ./install-rstudio-source.bash 2>&1 | tee source.log
../common/authenticate.bash "Installing RStudio Desktop"
sudo -H ./install-rstudio-desktop.bash 2>&1 | tee desktop.log
