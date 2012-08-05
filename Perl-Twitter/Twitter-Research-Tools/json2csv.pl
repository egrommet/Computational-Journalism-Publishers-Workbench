#! /usr/bin/perl -w
# convert JSON to CSV

use strict;
use warnings;
use local::lib;
use English qw(-no_match_vars);
use YAML;
require TwitterUtilities;

# get filename
my $filename;
if ($#ARGV < 0) { # no argument?
  print {*STDERR} 'Enter input JSON file name: ' or croak $OS_ERROR;
  $filename = <>; chomp $filename;
}
else { # at least one - assume it's a file name
  $filename = shift @ARGV;
}
$filename =~ s/\.json//i; # get base filename

# get headers
my $headerfile = 'headers.yaml';
if ($#ARGV >= 0) { # is there an argument?
  $headerfile = shift @ARGV; # over-ride default
}
my $object_keys = YAML::LoadFile($headerfile);
my @headers = sort keys %$object_keys;

# second pass - convert JSON to CSV
open my $JSON, '<:utf8', "${filename}.json" or croak $OS_ERROR; # input JSON
open my $CSV, '>:utf8', "${filename}.csv" or croak $OS_ERROR; # output CSV
TwitterUtilities::print_csv_header($CSV, \@headers); # print header line
while (<$JSON>) {
  chomp $_;
  TwitterUtilities::print_json_as_csv($CSV, $_, \@headers);
}
close $JSON;
close $CSV;
exit;
