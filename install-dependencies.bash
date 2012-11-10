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

for i in \
  TexLive \
  Profiling \
  Redis-Source \
  R-patched \
  RStudio \
  Libraries \
  eBook-editing \
  PDF-Tools \
  Perl-Modules \
  Perl-Local-Library \
  Ruby-Gems \
  GoogleRefine \
  Maqetta
do
  pushd $i
  ./install-dependencies.bash 2>&1 | tee dependencies.log
  popd
done
git status
