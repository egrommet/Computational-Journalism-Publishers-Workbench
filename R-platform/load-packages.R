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
    'devtools',
    'shiny',
    'ggplot2',
    'knitr',
    'markdown',
    'RODBC',
    'RSQLite',
    'RSQLite.extfuns',
    'reshapeGUI',
    'rggobi',
    'ctv',
    'twitteR',
    'streamR',
    'Rcmdr',
    'rattle',
    'JGR',
    'Deducer',
    'RcmdrPlugin.temis',
    'tm',
    'tm.plugin.dc',
    'tm.plugin.mail',
    'tm.plugin.webmining',
    'tm.plugin.sentiment'
  ),
  dependencies=TRUE
)
warnings()
