#! /bin/bash

for i in TexLive R-GGobi RStudio eBook-editing PDF-Tools Perl-Twitter
do
  pushd $i
  ./install-all.bash
  popd
done
