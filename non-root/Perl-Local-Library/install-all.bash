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

# clean slate
rm -fr ~/perl5 ~/.cpan

# set environment variables
perl -Mlocal::lib >> ~/.bashrc
source ~/.bashrc
echo "export MANPATH=$MANPATH:$PERL_LOCAL_LIB_ROOT/man" >> ~/.bashrc
source ~/.bashrc
set|grep -i PERL

cpan < config.cpan 2>&1 | tee config.log # do the autoconfig

for i in \
  CPAN \
  Net::Twitter \
  AnyEvent::Twitter::Stream \
  Sys::Statistics::Linux \
  Hash::Flatten \
  Browser::Open
do
  cpan ${i} 2>&1 | tee ${i}.log
done
