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
    'ctv',
    'Rcmdr',
    'RcmdrPlugin.temis',
    'tm.plugin.dc',
    'tm.plugin.mail',
    'tm.plugin.webmining',
    'tm.plugin.sentiment',
    'rattle'
  ),
  dependencies=TRUE
)
library(ctv)
update.views(
  c(
    'Graphics',
    'ReproducibleResearch',
    'Spatial',
    'NaturalLanguageProcessing'
  ),
  coreOnly=FALSE,
  dependencies=NA
)
warnings()
install.packages(
  c(
    'RSAGA',
    'acs',
    'UScensus2000blkgrp',
    'UScensus2000cdp',
    'UScensus2000tract',
    'UScensus2010',
    'ggplot2',
    'ggmap',
    'OpenStreetMap',
    'plotGoogleMaps',
    'plotKML',
    'R2G2',
    'RgoogleMaps',
    'RWeather',
    'twitteR',
    'streamR',
    'reshapeGUI',
    'devtools',
    'shiny',
    'knitr',
    'markdown',
    'RPostgreSQL',
    'RSQLite',
    'RSQLite.extfuns',
    'filehash',
    'filehashSQLite',
    'googlePublicData',
    'googleVis',
    'gooJSON',
    'RDF',
    'rrdf'
  ),
  dependencies=NA
)
warnings()
