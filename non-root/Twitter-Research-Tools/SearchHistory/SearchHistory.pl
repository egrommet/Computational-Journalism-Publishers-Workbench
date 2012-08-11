#! /usr/bin/perl -w
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#
# do a historical search using the Search API

use strict;
use warnings;
use local::lib;
use English qw(-no_match_vars);

use Net::Twitter;
use YAML;

require TwitterUtilities;

# get filename
print {*STDERR} 'Enter output file name without suffix/extension: ' or croak $OS_ERROR;
my $filename = <>; chomp $filename;

# get geocode
my $geocode = q{};
print {*STDERR} 'Enter geocode (lat,long,radius) or just \'enter\' for global search: ' or
  croak $OS_ERROR;
$geocode = <>; chomp $geocode;

# get the search string
my $search_string = ''; 
while (length $search_string < 1) {
  print {*STDERR} 'Enter non-empty Twitter Search string: ' or
    croak $OS_ERROR;
  $search_string = <>; chomp $search_string;
}

print {*STDERR} "${search_string}\n" or croak $OS_ERROR;

# hash to save headers encountered
my %object_keys = ();

# get a Twitter handle
my $handle = Net::Twitter->new();

# first pass - collect header names and save as JSON
open my $JSON, '>:utf8', "${filename}.json" or croak $OS_ERROR; # output JSON file

# declare globals
my $max_id = 0; # outer loop variable for going back in time
my $new_max_id = 0; # variable to find minimum tweet id seen

while (1) { # outer loop over max_id
  my $page = 1;
  my $tweets_for_this_max_id = 0;

  while (1) { # page loop - exit on empty result
    print {*STDERR} "${max_id}: ${page} / " or croak $OS_ERROR;
    my $tweets = get_tweets($search_string, $geocode, $handle, $max_id, $page);

    if (defined($handle->{_twitter_error})) {
      my $message = ($handle->{_twitter_error})->{error};
      print {*STDERR} "${message}\n" or croak $OS_ERROR;
      last;
    }

    my $results = $tweets->{results};
    if (!defined $results) {
      print {*STDERR} "No results\n" or croak $OS_ERROR;
      last;
    }

    if ($new_max_id == 0) {
      $new_max_id = $tweets->{max_id};
    }

    my $tweet_count = scalar @{ $results };
    if ($tweet_count < 1) {
      print {*STDERR} "No tweets\n" or croak $OS_ERROR;
      last;
    }

    print {*STDERR} "${tweet_count} tweets collected\n" or croak $OS_ERROR;
    $tweets_for_this_max_id += $tweet_count;

    $new_max_id =
      print_flattened_tweets($JSON, $results, $tweet_count, $new_max_id, 
        \%object_keys);

    $page++;
    last if $page > 15;
  }

  last if $tweets_for_this_max_id < 1;
  $max_id = $new_max_id - 1;
}

close $JSON or croak $OS_ERROR;
YAML::DumpFile('headers.yaml', \%object_keys);
exit;

sub print_flattened_tweets {
  my ($fh, $twarray, $twcount, $newmax, $object_keys) = @_;
  for (my $ix=0; $ix<$twcount; $ix++) {
    my $tweet_hash = $twarray->[$ix];
    $tweet_hash = TwitterUtilities::object_flatten($tweet_hash, $object_keys);
    TwitterUtilities::print_json_data($fh, $tweet_hash);
    if ($tweet_hash->{id} < $newmax) {
      $newmax = $tweet_hash->{id};
    }
  }
  return $newmax;
}

sub get_tweets {
  my ($q, $g, $h, $max, $page) = @_;
  my $tweets;
  my $calm = 5; # minimum sleep time
  sleep $calm;

  while (1) { # exit on good tweets

    if ($max == 0) { # first set of pages?
      $tweets = eval {
        $h->search({
          q => $q,
          geocode => $g,
          result_type => 'recent',
          rpp => 100,
          include_entities => 'true',
          page => $page
        });
      };
    }
    else {
      $tweets = eval {
        $h->search({
          q => $q,
          geocode => $g,
          result_type => 'recent',
          rpp => 100,
          max_id => $max,
          include_entities => 'true',
          page => $page
        });
      };
    }
    if ($h->{_http_response}->{_rc} =~ /200/) { # did it return OK?
      last;
    }

    # error - wait and retry
    TwitterUtilities::error_wait($h);
  }
  return $tweets;
}
