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

# workaround for CRAN 'jpeg' failure on Fedora
sudo yum downgrade \
  libjpeg-turbo \
  libjpeg-turbo-devel \
  libkdcraw \
  libjpeg-turbo-utils \
  kdegraphics-thumbnailers \
  kipi-plugins-libs \
  kipi-plugins \
  libjpeg-turbo-static \
  libkipi \
  kamoso \
  ksnapshot \
  gwenview \
  gwenview-libs
