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
for i in vmdk vdi vpc
do
  echo "sudo qmeu-img convert -O ${i} $1.qcow2 $1.${i}"
  sudo qemu-img convert -O ${i} $1.qcow2 $1.${i}
done
ls -l $1.*
