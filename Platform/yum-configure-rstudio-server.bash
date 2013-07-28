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

sudo -H useradd -r rstudio-server
sudo -H cp /usr/local/lib/rstudio-server/extras/pam/rstudio /etc/pam.d
sudo -H cp /usr/local/lib/rstudio-server/extras/init.d/redhat/rstudio-server /etc/init.d
sudo -H chmod +x /etc/init.d/rstudio-server
sudo -H /sbin/chkconfig --add rstudio-server
sudo -H ln -f -s /usr/local/lib/rstudio-server/bin/rstudio-server /usr/sbin/rstudio-server
sudo -H ln -f -s /usr/local/bin/R /usr/sbin/R
sudo -H rstudio-server start

echo "Opening TCP port 8787"
sudo -H firewall-cmd --permanent --add-port 8787/tcp
sudo -H firewall-cmd --add-port 8787/tcp
