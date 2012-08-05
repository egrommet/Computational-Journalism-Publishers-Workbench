#! /bin/bash

source /etc/profile # grab TexLive
mkdir -p /usr/local/src

pushd /usr/local/src
export DIR=ggobi-2.1.9
export WHAT=${DIR}.tar.bz2
export WHERE=http://ggobi.org/downloads
rm -f ${WHAT} 
wget ${WHERE}/${WHAT}
rm -fr ${DIR}
tar xf ${WHAT}

pushd ${DIR}
./configure --with-all-plugins
make 
make install
make ggobirc
mkdir -p /etc/xdg/ggobi
cp ggobirc /etc/xdg/ggobi/ggobirc
popd

popd
cp ggobi.conf /etc/ld.so.conf.d/
ldconfig
cp ggobi.sh /etc/profile.d/
source /etc/profile
