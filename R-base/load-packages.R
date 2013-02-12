#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#
install.packages(
  c(
    'RODBC',
    'RPostgreSQL',
    'filehash',
    'filehashSQLite',
    'RSQLite',
    'RSQLite.extfuns',
    'RSclient',
    'Rserve',
    'RUnit',
    'inline',
    'rbenchmark',
    'Rcmdr',
    'rattle',
    'devtools',
    'testthat',
    'roxygen2',
    'twitteR',
    'rJava',
    'seewave',
    'tuneR',
    'audio',
    'ctv', 
    'e1071',
    'sem',
    'relimp',
    'multcomp',
    'lmtest',
    'leaps',
    'effects',
    'abind',
    'RJSONIO',
    'quantmod',
    'shiny',
    'markdown',
    'doRedis',
    'tm',
    'tm.plugin.dc',
    'tm.plugin.mail'
  )
)
warnings()
library(ctv)
update.views(
  c(
    'ReproducibleResearch',
    'Graphics'
  )
)
warnings()
