#! /bin/bash -v

mkdir -p /usr/local/src

pushd /usr/local/src
export DIR=ggobi-2.1.9
export WHAT=${DIR}.tar.bz2
export WHERE=http://ggobi.org/downloads
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
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
