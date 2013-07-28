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

# advanced packages
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
  destdir='./downloaded_packages'
)
warnings()

# install the 2010 Census data files
require(UScensus2010)
install.blkgrp('linux')
install.cdp('linux')
install.county('linux')
install.tract('linux')

# task views
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
  destdir='./downloaded_packages'
)
warnings()
