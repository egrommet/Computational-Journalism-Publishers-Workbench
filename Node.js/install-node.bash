#! /bin/bash -v

mkdir -p /usr/local/src

pushd /usr/local/src
export DIR=`curl -s nodejs.org/ | grep '.tar.gz' | head -n 1 | \
  sed 's/^.*href=.*node/node/' | sed 's/.tar.gz.*$//'`
export WHAT=${DIR}.tar.gz
export WHERE=http://nodejs.org/dist/latest
rm -f ${WHAT}
curl ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}
tar xf ${WHAT}

pushd ${DIR}
./configure
/usr/bin/time make
make install
/usr/local/npm install -g coffee-script
/usr/local/npm install -g shiny-server
/sbin/ldconfig
popd

popd
