#! /bin/bash

# clean slate
rm -fr ~/perl5 ~/.cpan

# set environment variables
echo 'eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)' >> ~/.bashrc
source ~/.bashrc
set|grep PERL

cpan < config.cpan # do the autoconfig
cpan CPAN # update CPAN

cpan Net::Twitter
cpan AnyEvent::Twitter::Stream
cpan Sys::Statistics::Linux
cpan Hash::Flatten
cpan Browser::Open
