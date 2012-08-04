#! /bin/bash

for i in dependencies pandoc calibre epubcheck beta-sigil
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
