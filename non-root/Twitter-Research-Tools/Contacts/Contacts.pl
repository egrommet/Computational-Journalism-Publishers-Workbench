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

use strict;
use warnings;
use local::lib;
use English qw(-no_match_vars);
use Carp;

use Net::Twitter;
use YAML;

require TwitterUtilities;

print {*STDERR} 'Enter screen name of Twitter user: ' or croak $OS_ERROR;
my $target_screen_name = <>;
chomp $target_screen_name;
my $json_file = "${target_screen_name}_contacts.json";
print {*STDERR} "\nJSON file \"${json_file}\" will be created.\n" or
  croak $OS_ERROR;
my %object_keys = (); # hash to collect keys seen

# open output file
open my $JSON, '>:utf8', $json_file or croak $OS_ERROR;

# get a Twitter handle
my $handle =
  Net::Twitter->new();

my $sleep_time = TwitterUtilities::rate_limit_status($handle, 1);
sleep $sleep_time;
my $target = $handle->show_user({screen_name => $target_screen_name});
print {*STDERR} "${target_screen_name} profile acquired\n" or
  croak $OS_ERROR;


$target = TwitterUtilities::object_flatten($target, \%object_keys);
$target->{they_follow_user} = 0; # I'm not my own friend or follower ;-)
$target->{user_follows_them} = 0;

# save target profile
TwitterUtilities::print_json_data($JSON, $target);

my $cursor = -1; # for multi-page fetching
my $page = 1; # page counter for printing

# get lists of friend and follower IDs
my %follower_ids = ();
while (1) {
  $sleep_time = TwitterUtilities::rate_limit_status($handle, 1);
  sleep $sleep_time;
  my $followers_ids = eval {
    $handle->followers_ids({screen_name => $target_screen_name,
      cursor => $cursor});
  };

  if ($EVAL_ERROR) {
    print {*STDERR} "You are not authorized to view that user.\n" if
      $EVAL_ERROR =~ /Not authorized/;
    exit if $EVAL_ERROR =~ /Not authorized/;
    TwitterUtilities::error_wait($handle);
    next;
  }

  $cursor = $followers_ids->{next_cursor};
  my $workref = $followers_ids->{ids};
  my $count = scalar @{ $workref }; # how many came back?
  last if $count < 1; # bail if no results
  foreach my $follower_id (@{ $workref }) {
    $follower_ids{$follower_id}++;
  }
  print {*STDERR} "follower ids page ${page} ${count} retrieved\n" or
    croak $OS_ERROR;
  $page += 1;
  last if $cursor == 0;
}
my $follower_count = scalar keys %follower_ids;
print {*STDERR} "${target_screen_name} has ${follower_count} followers\n" or
  croak $OS_ERROR;

$cursor = -1; # for multi-page fetching
$page = 1; # page counter for printing
my %friend_ids = ();
while (1) {
  $sleep_time = TwitterUtilities::rate_limit_status($handle, 1);
  sleep $sleep_time;
  my $friends_ids = eval {
    $handle->friends_ids({screen_name => $target_screen_name,
      cursor => $cursor});
  };

  if ($EVAL_ERROR) {
    TwitterUtilities::error_wait($handle);
    next;
  }

  $cursor = $friends_ids->{next_cursor};
  my $workref = $friends_ids->{ids};
  my $count = scalar @{ $workref }; # how many came back?
  last if $count < 1; # bail if no results
  foreach my $friend_id (@{ $workref }) {
    $friend_ids{$friend_id}++;
  }
  print {*STDERR} "friend ids page ${page} ${count} retrieved\n" or
    croak $OS_ERROR;
  $page += 1;
  last if $cursor == 0;
}
my $friend_count = scalar keys %friend_ids;
print {*STDERR} "${target_screen_name} is following ${friend_count}\n" or
  croak $OS_ERROR;

# now we have lists - get the records
$cursor = -1; # for multi-page fetching
$page = 1; # page counter for printing
while (1) { # exit on end of data
  $sleep_time = TwitterUtilities::rate_limit_status($handle, 1);
  sleep $sleep_time;
  my $followers = eval {
    $handle->followers({screen_name => $target_screen_name, cursor => $cursor});
  };

  if ($EVAL_ERROR) {
    TwitterUtilities::error_wait($handle);
    next;
  }

  $cursor = $followers->{next_cursor};
  my $workref = $followers->{users};
  my $count = scalar @{ $workref };
  last if $count < 1; # exit on empty result
  if ($followers) {
    print {*STDERR} "followers page ${page} ${count} retrieved\n" or
      croak $OS_ERROR;
  }
  $page += 1;
  while (my $follower = shift @{ $workref }) {
    $follower = TwitterUtilities::object_flatten($follower, \%object_keys);
    $follower->{they_follow_user} = 1; # this is from the followers list ;-)
    $follower->{user_follows_them} = 0;
    if (defined $friend_ids{$follower->{id}}) {
      $follower->{user_follows_them} = 1;
    }
    TwitterUtilities::print_json_data($JSON, $follower);
  }
  last if $cursor == 0;
}

# we've done all the followers - just need friends who *aren't* followers!
$cursor = -1; # for multi-page fetching
$page = 1; # page counter for printing
while (1) { # exit on end of data
  $sleep_time = TwitterUtilities::rate_limit_status($handle, 1);
  sleep $sleep_time;
  my $friends = eval {
    $handle->friends({screen_name => $target_screen_name, cursor => $cursor});
  };

  if ($EVAL_ERROR) {
    TwitterUtilities::error_wait($handle);
    next;
  }

  $cursor = $friends->{next_cursor};
  my $workref = $friends->{users};
  my $count = scalar @{ $workref };
  last if $count < 1; # exit on empty result
  if ($friends) {
    print {*STDERR} "friends page ${page} ${count} retrieved\n" or
      croak $OS_ERROR;
  }
  $page += 1;
  while (my $friend = shift @{ $workref }) {
    $friend = TwitterUtilities::object_flatten($friend, \%object_keys);
    next if defined $follower_ids{$friend->{id}}; # got them already!
    $friend->{they_follow_user} = 0; # not following me
    $friend->{user_follows_them} = 1;
    TwitterUtilities::print_json_data($JSON, $friend);
  }
  last if $cursor == 0;
}

close $JSON or croak $OS_ERROR;
YAML::DumpFile("headers.yaml", \%object_keys);
exit;
