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
    'rjags'
  ),
  configure.args=c(
    '--with-jags-include=/usr/local/include/JAGS',
    '--with-jags-lib=/usr/local/lib',
    '--with-jags-modules=/usr/local/lib/JAGS/modules-3'
  ),
  dependencies=TRUE
)
warnings()
