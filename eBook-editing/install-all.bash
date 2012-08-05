#! /bin/bash

for i in dependencies pandoc calibre vym epubcheck beta-sigil lyx
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
