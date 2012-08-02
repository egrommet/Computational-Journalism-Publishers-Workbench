#! /bin/bash -v

useradd -r rstudio-server
cp /usr/local/lib/rstudio-server/extras/pam/rstudio /etc/pam.d
cp /usr/local/lib/rstudio-server/extras/init.d/redhat/rstudio-server /etc/init.d
chmod +x /etc/init.d/rstudio-server
chkconfig --add rstudio-server
ln -f -s /usr/local/lib/rstudio-server/bin/rstudio-server \
  /usr/sbin/rstudio-server
rstudio-server start
system-config-firewall
