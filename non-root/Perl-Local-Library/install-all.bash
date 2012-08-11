#! /bin/bash

# clean slate
rm -fr ~/perl5 ~/.cpan

# set environment variables
echo 'eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)' >> ~/.bashrc
source ~/.bashrc
set|grep PERL

cpan < config.cpan 2>&1 | tee config.log # do the autoconfig

for i in 
  CPAN
  Net::Twitter
  AnyEvent::Twitter::Stream
  Sys::Statistics::Linux
  Hash::Flatten
  Browser::Open
do
  cpan ${i} 2>&1 | tee ${i}.log
done
