#! /bin/bash -v
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#
export FROM=qcow2
for i in vmdk vdi vpc
do
  echo "/usr/bin/time qemu-img convert -O ${i} $1.${FROM} $1.${i}"
  /usr/bin/time qemu-img convert -O ${i} $1.${FROM} $1.${i}
  qemu-img info $1.${i}
done
