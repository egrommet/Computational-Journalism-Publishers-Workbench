#!/bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/haskell:/next/openSUSE_12.2/devel:languages:haskell:next.repo
zypper addrepo -cf http://download.opensuse.org/repositories/Documentation:/Tools/openSUSE_12.2/Documentation:Tools.repo
echo "Answer 'a' to repository trust questions below."
zypper refresh
