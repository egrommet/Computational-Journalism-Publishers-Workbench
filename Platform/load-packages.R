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
  dependencies=TRUE
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
install.packages(
  c(
    'foreign',
    'memisc',
    'RSAGA',
    'acs',
    'UScensus2010',
    'ggmap',
    'OpenStreetMap',
    'plotGoogleMaps',
    'plotKML',
    'R2G2',
    'RgoogleMaps',
    'RWeather',
    'RPostgreSQL',
    'RSQLite',
    'RSQLite.extfuns',
    'filehash',
    'filehashSQLite',
    'googlePublicData',
    'googleVis',
    'gooJSON',
    'RDF',
    'rrdf',
    'egonet',
    'snort',
    'igraph',
    'latentnet',
    'giRaph',
    'rgexf',
    'sna',
    'statnet',
    'statnet.common',
    'Bergm',
    'seewave',
    'tuneR',
    'signal',
    'audio',
    'reports',
    'ctv'
  ),
  dependencies=NA
)
warnings()

# install the 2010 Census data files
library(UScensus2010)
install.blkgrp('linux')
install.cdp('linux')
install.county('linux')
install.tract('linux')

# finally, the task views
require(ctv)
update.views(
  c(
    'Graphics',
    'ReproducibleResearch',
    'Spatial',
    'NaturalLanguageProcessing',
    'Finance',
    'MachineLearning',
    'Econometrics',
    'TimeSeries'
  ),
  coreOnly=FALSE,
  dependencies=NA
)
warnings()
