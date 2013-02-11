#! /bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

source ~/.bash_profile

# find libraries and includes
export LIB=`locate openmpi|grep libmpi.so$|sed 's;/libmpi.so;;'`
export INCLUDE=`locate openmpi|grep mpi.h$|sed 's;/mpi.h;;'`
export ARGS="--with-Rmpi-include=${INCLUDE} --with-Rmpi-libpath=${LIB} --with-Rmpi-type=OPENMPI"

# download and install Rmpi
rm -f Rmpi*tar.gz; R --no-save --no-restore < download-Rmpi.R
R CMD INSTALL --configure-args="${ARGS}" ./Rmpi*tar.gz
