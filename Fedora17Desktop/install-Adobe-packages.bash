#! /bin/bash -v

# Adobe repositories
yum install -y \
  http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm \
  http://linuxdownload.adobe.com/adobe-release/adobe-release-i386-1.0-1.noarch.rpm

yum install -y \
  flash-plugin \
  nspluginwrapper \
  AdobeReader_enu
