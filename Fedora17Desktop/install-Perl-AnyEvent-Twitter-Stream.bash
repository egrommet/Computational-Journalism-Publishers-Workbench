#! /bin/bash -v

# This one isn't in the repositories, so we install via local::lib
perl -MCPAN -Mlocal::lib -e 'CPAN::install(AnyEvent::Twitter::Stream)'
perl -Mlocal::lib >> ~/.bashrc
