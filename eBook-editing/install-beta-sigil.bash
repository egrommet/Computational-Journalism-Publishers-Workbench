#! /bin/bash

mkdir -p /usr/local/src
pushd /usr/local/src
  export SDIR=sigil
  rm -fr ${SDIR}
  git clone https://code.google.com/p/sigil/
  export BDIR=SigilBuild
  rm -fr ${BDIR}
  mkdir -p ${BDIR}
  pushd ${BDIR}
    cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release ../${SDIR}
    make
    make install
  popd
  
popd
