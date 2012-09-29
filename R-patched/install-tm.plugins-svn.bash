#! /bin/bash -v

export PATH=${PATH}:/usr/local/bin
mkdir -p /usr/local/src/tm.plugins

pushd /usr/local/src/tm.plugins
rm -fr sentiment *.tar.gz
svn checkout svn://scm.r-forge.r-project.org/svnroot/sentiment/

pushd sentiment/pkg
for i in boilerpipeR tm.plugin.sentiment tm.plugin.webmining
do
  tar cf - ${i} | gzip -c > ${i}.tar.gz
  R CMD INSTALL ${i}.tar.gz 2>&1 | tee ${i}.log
done
popd

popd
