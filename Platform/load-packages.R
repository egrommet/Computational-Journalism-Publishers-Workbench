#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

source('../common/Rprofile')
install.packages(
  c(
    'mosaic',
    'snatm',
    'Rcmdr',
    'RcmdrPlugin.temis',
    'tm.plugin.dc',
    'tm.plugin.mail',
    'tm.plugin.webmining',
    'tm.plugin.sentiment',
    'twitteR',
    'streamR',
    'ggplot2',
    'sm',
    'reshapeGUI',
    'shiny',
    'devtools',
    'lubridate',
    'knitr',
    'knitcitations',
    'pander'
  ),
  dependencies=TRUE,
  quiet=TRUE
)
warnings()
require(devtools)
install_github(
  c(
    'slidify',
    'slidifyLibraries',
    'rCharts'
  ),
  username='ramnathv', 
  dependencies=TRUE
)
warnings()
