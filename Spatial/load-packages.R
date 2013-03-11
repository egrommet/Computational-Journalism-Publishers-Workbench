#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

source('../common/Rprofile', echo=TRUE)
library(ctv)
update.views(
  c(
    'Spatial'
  ),
  dependencies=TRUE
)
warnings()
install.packages(
  c(
    'acs',
    'UScensus2000blkgrp',
    'UScensus2000cdp',
    'UScensus2000tract',
    'UScensus2010'
  ),
  dependencies=TRUE
)
warnings()
