#! /bin/bash

# set environment variables
echo 'eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)' >> ~/.bashrc
source ~/.bashrc

rm -fr ~/perl5 ~/.cpan
cpan < config.cpan # do the autoconfig
cpan CPAN # update CPAN

cpan Net::Twitter
cpan AnyEvent::Twitter::Stream
cpan Sys::Statistics::Linux
cpan Hash::Flatten
cpan Browser::Open
