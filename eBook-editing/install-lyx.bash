#! /bin/bash

mkdir -p /usr/local/src
pushd /usr/local/src
  export WHERE=ftp://ftp.lyx.org/pub/lyx/stable/2.0.x
  export VERSION=2.0.4
  export DIR=lyx-${VERSION}
  export WHAT=${DIR}.tar.xz
  curl ${WHERE}/${WHAT} > ${WHAT}
  rm -fr ${DIR}
  tar xf ${WHAT}
  pushd ${DIR}
    ./configure
    make
    make install
  popd
  
popd
