#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

## use devtools to install other dependencies from GitHub
library(devtools)

## it takes a few minutes to install qtbase, but you do not need to reinstall it every time
install_github('qtbase', 'ggobi'); install_github('qtpaint', 'ggobi')

## install packages from CRAN
install.packages(
  c(
    'scales',
    'tourr',
    'objectSignals',
    'objectProperties',
    'plumbr'
  )
  repos='http://cran.fhcrc.org'
)
warnings()

# product plots and density visualization
pkgs <- list(hadley = c('productplots', 'densityvis'))
for (repo in names(pkgs)) {
  for (pkg in pkgs[[repo]]) install_github(pkg, repo)
}

## and finally cranvas:
install_github('cranvas', 'ggobi', args="--no-multiarch")
