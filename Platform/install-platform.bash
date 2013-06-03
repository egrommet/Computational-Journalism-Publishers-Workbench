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

# R from source
sudo -H ./install-R-source.bash 2>&1 | tee R-source.log
sudo -H mkdir -p `R RHOME`/site-library # make a place for our stuff
cp ../common/Rprofile ~/.Rprofile

# Packages that crash Precise gcc with -flto
sudo -H ./install-nolto.bash 2>&1 | tee nolto.log

../common/authenticate.bash "Installing platform R packages"
./install-packages.bash 2>&1 | tee packages.log
../common/authenticate.bash "Installing RStudio source code"
sudo -H ./install-rstudio-source.bash 2>&1 | tee source.log
../common/authenticate.bash "Installing RStudio Desktop"
sudo -H ./install-rstudio-desktop.bash 2>&1 | tee desktop.log
../common/authenticate.bash "Installing RStudio Server"
sudo -H ./install-rstudio-server.bash 2>&1 | tee server.log

./configure-postgresql.bash 2>&1 | tee configure-postgresql.log
./configure-rstudio-server.bash 2>&1 | tee configure-rstudio-server.log
