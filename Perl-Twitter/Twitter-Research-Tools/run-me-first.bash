#! /bin/bash

# set environment variables
echo 'eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)' >> ~/.bashrc
source ~/.bashrc

rm -fr ~/perl5 ~/.cpan
cpan < config.cpan # do the autoconfig
cpan CPAN # update CPAN

perl -MCPAN -Mlocal::lib -e 'CPAN::install(YAML)'
perl -MCPAN -Mlocal::lib -e 'CPAN::install(YAML::Syck)'
perl -MCPAN -Mlocal::lib -e 'CPAN::install(JSON)'
perl -MCPAN -Mlocal::lib -e 'CPAN::install(JSON::XS)'
perl -MCPAN -Mlocal::lib -e 'CPAN::install(Net::Twitter)'
perl -MCPAN -Mlocal::lib -e 'CPAN::install(AnyEvent::Twitter::Stream)'
perl -MCPAN -Mlocal::lib -e 'CPAN::install(Sys::Statistics::Linux)'
perl -MCPAN -Mlocal::lib -e 'CPAN::install(Hash::Flatten)'
perl -MCPAN -Mlocal::lib -e 'CPAN::install(Browser::Open)'
