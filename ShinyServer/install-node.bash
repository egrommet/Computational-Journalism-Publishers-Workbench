#! /bin/bash -v

pushd ~/local/src
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
make
sudo make install
sudo npm install -g coffee-script
sudo npm install -g shiny-server
sudo /sbin/ldconfig
popd

popd
