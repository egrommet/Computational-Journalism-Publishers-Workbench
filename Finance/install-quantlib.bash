#! /bin/bash -v

mkdir -p /usr/local/src
cd /usr/local/src
export FILES='http://sourceforge.net/projects/quantlib/files/QuantLib/'
export VERSION=`curl -s ${FILES}|grep tar\.gz|head -n 1|sed 's/^.*QuantLib-//'|sed 's/\.tar\.gz.*$//'`
echo $VERSION
export DIR=QuantLib-${VERSION}
export WHAT=${DIR}.tar.gz
export \
  WHERE=http://downloads.sourceforge.net/project/quantlib/QuantLib/${VERSION}
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
cd ${DIR}
./configure
/usr/bin/time make
make install
cd ..

ldconfig
SuSEconfig