#! /bin/bash

mkdir -p /usr/local/src

pushd /usr/local/src
rm -fr epubcheck*
curl -L http://epubcheck.googlecode.com/files/epubcheck-3.0b5.zip \
  > epubcheck-3.0b5.zip
unzip epubcheck-3.0b5.zip
popd

cp epubcheck /usr/local/bin
