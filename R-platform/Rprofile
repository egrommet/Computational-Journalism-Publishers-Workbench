# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#
# .Rprofile -- commands to execute at the beginning of each R session
#
# You can use this file to load packages, set options, etc.
#
# NOTE: changes in this file won't be reflected until after you quit
# and start a new session
#
system('mkdir -p ~/.rkward/library')
.libPaths(c('~/.rkward/library', .libPaths()))
options(repos=c(
  CRAN='http://cran.cnr.Berkeley.edu',
  BioCsoft='http://www.bioconductor.org/packages/2.11/bioc',
  Omegahat='http://www.omegahat.org/R' ,
  'R-Forge'='http://R-Forge.R-project.org' 
))
