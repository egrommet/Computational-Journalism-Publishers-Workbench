#! /bin/bash -v

#for i in dependencies pandoc calibre epubcheck beta-sigil
for i in calibre
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
