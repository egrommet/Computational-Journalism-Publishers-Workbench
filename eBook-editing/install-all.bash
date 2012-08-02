#! /bin/bash -v

for i in epubcheck beta-sigil
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
