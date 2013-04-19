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
    'ggplot2',
    'ggmap',
    'OpenStreetMap',
    'plotGoogleMaps',
    'Rcmdr',
    'RcmdrPlugin.temis',
    'tm.plugin.dc',
    'tm.plugin.mail',
    'tm.plugin.webmining',
    'tm.plugin.sentiment',
    'twitteR',
    'streamR',
    'rattle',
    'reshapeGUI',
    'devtools',
    'shiny',
    'knitr',
    'markdown',
    'ctv',
    'RPostgreSQL',
    'RSQLite',
    'RSQLite.extfuns',
    'filehash',
    'filehashSQLite',
    'googlePublicData',
    'googleVis',
    'gooJSON'
  ),
  dependencies=TRUE
)
warnings()

library(ctv)
update.views(
  c(
    'Graphics',
    'ReproducibleResearch',
    'Spatial'
  ),
  dependencies=TRUE
)
warnings()
