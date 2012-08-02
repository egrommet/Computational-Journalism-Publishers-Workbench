#! /bin/bash -v

useradd -r rstudio-server
#cp /usr/local/lib/rstudio-server/extras/upstart/rstudio-server.conf somewhere
ln -f -s /usr/local/lib/rstudio-server/bin/rstudio-server \
  /usr/sbin/rstudio-server
rstudio-server start

echo "Open TCP port 8787"
firefox localhost:8787 &
