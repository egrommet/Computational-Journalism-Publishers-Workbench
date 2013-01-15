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

echo "Adding repositories as 'root'"
echo "You will need to authenticate"
sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/home:/illuusio/openSUSE_12.2/home:illuusio.repo # Padre

echo "Answer 'a' to 'Do you want to reject the key, trust temporarily, or trust always?' below."
sudo zypper --gpg-auto-import-keys refresh

sudo zypper install -y \
  padre \
  perl-Crypt-SSLeay \
  perl-Net-SSLeay \
  perl-YAML \
  perl-YAML-Syck \
  perl-JSON \
  perl-JSON-XS \
  perl-PadWalker \
  perl-local-lib
