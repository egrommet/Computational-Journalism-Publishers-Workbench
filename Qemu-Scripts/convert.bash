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
/usr/bin/time sudo qemu-img convert -O vmdk -o compat6 $1.qcow2 $1.vmdk
/usr/bin/time sudo qemu-img convert -O vdi $1.qcow2 $1.vdi
/usr/bin/time sudo qemu-img convert -O vpc $1.qcow2 $1.vpc
qemu-info $1.*
ls -l $1.*
