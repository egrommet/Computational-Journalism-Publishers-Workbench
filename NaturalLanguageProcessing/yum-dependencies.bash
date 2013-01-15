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

# Packages
sudo yum install -y \
  rasqal \
  raptor \
  redland \
  redland-virtuoso \
  virtuoso-opensource \
  virtuoso-opensource-apps \
  virtuoso-opensource-conductor \
  virtuoso-opensource-doc \
  virtuoso-opensource-utils \
  python-nltk \
  wordnet \
  wordnet-devel

# WordNet environment variable
sudo cp wordnet-yum.sh /etc/profile.d/ # set WordNet home
source /etc/profile
set|grep WNHOME
