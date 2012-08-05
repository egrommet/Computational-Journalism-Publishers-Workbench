# utilities common to all Twitter scripts

package TwitterUtilities;
use strict;
use warnings;
use local::lib;
use Carp;
use English qw(-no_match_vars);
use JSON;
use Net::Twitter;
use Hash::Flatten;

require Exporter;
use base qw(Exporter);
our @EXPORT_OK = qw();

# get rid of non-ASCII characters and do other miscellaneous cleanup
sub clean_text {
  my ($text) = @_;
  my $EMPTY = q{};
  return $EMPTY if !defined $text;
  eval {
    $text =~ s/[[:^ascii:]]/ /g;
    $text =~ s/\t/ /g; # tabs -> space
    $text =~ s/\r/ /g; # return -> space
    $text =~ s/\n/ /g; # newline -> space
    $text =~ s/\x00/ /g; # null -> space
  };
  if ($EVAL_ERROR) {
    return $EMPTY;
  }
  return $text;
}

# generic flattener
sub object_flatten {
  my ($object, $object_keys) = @_;
  $object = Hash::Flatten::flatten($object);

  # record counts of keys seen in caller's hash
  foreach my $key (keys %{ $object }) {
    $object_keys->{$key}++;
  }
  return $object;
}

# date conversions - much faster than Date::Manip since we know formats
my %months = ();
$months{'Jan'} = 1;
$months{'Feb'} = 2;
$months{'Mar'} = 3;
$months{'Apr'} = 4;
$months{'May'} = 5;
$months{'Jun'} = 6;
$months{'Jul'} = 7;
$months{'Aug'} = 8;
$months{'Sep'} = 9;
$months{'Oct'} = 10;
$months{'Nov'} = 11;
$months{'Dec'} = 12;

sub fastdate {
  my ($input) = @_;
  my ($dow, $mon, $day, $time, $zone, $year) = split q{ }, $input;
  if (!defined $months{$mon}) { # this is a search-formatted date!
    return fastdate_search($input); # send this off to the right parser
  }
  else {
    my $monx = $months{$mon};
    return sprintf '%04d-%02d-%02d %8s %s',
      $year, $monx, $day, $time, $zone;
  }
}

# dates returned by search have a different format!
sub fastdate_search {
  my ($input) = @_;
  my ($dow, $day, $mon, $year, $time, $zone) = split q{ }, $input;
  my $monx = $months{$mon};
  return sprintf '%04d-%02d-%02d %8s %s', $year, $monx, $day, $time, $zone;
}

# wrap a string in quotes
sub enquote {
  my ($string) = @_;
  return "\"${string}\"";
}

# make a CSV "value" from a string
sub value_string {
  my ($header, $value) = @_; # key and value
  $value = clean_text($value); # clean text first
  $value =~ s/\"/""/g; # double any internal quotes

  if ($header =~ /_color/) { # is this a "color" field?
    return enquote("0x${value}") ; # these are hex!
  }

  if ($header =~ /created_at/) { # is this a creation timestamp?
    $value =~ s/"//g; # get rid of quotes
    return enquote(fastdate($value));
  }

  # anything else just gets enquoted
  return enquote($value);
}

# print JSON data
sub print_json_data {
  my ($JSON, $flattened_object) = @_;
  my $json_data = encode_json $flattened_object;
  $json_data =~ s/$/\n/;
  print {$JSON} $json_data or croak $OS_ERROR;
  return $json_data;
}

# print CSV data
sub print_json_as_csv {
  my ($CSV, $json_string, $headers) = @_;
  my $flattened_object = decode_json $json_string;
  return print_csv_data($CSV, $flattened_object, $headers);
}
sub print_csv_data {
  my ($CSV, $flattened_object, $headers) = @_;
  my $csv_data = q{};
  foreach my $key (@{ $headers }) {
    my $value;
    if (defined $flattened_object->{$key}) {
      $value = value_string($key, $flattened_object->{$key});
    }
    else {
      $value = q{};
    }
    $csv_data = "${csv_data}${value},";
  }

  # replace final comma with a newline
  $csv_data =~ s/,$/\n/;
  print {$CSV} $csv_data or croak $OS_ERROR;
  return $csv_data;
}

# print CSV header
sub print_csv_header {
  my ($CSV, $headers) = @_;
  my $csv_header = q{};
  foreach my $key (@{ $headers }) {
    $csv_header = "${csv_header}${key},";
  }
  $csv_header =~ s/,$/\n/;
  print {$CSV} $csv_header or croak $OS_ERROR;
  return $csv_header;
}

# Twitter rate limit checker
sub rate_limit_status {
  my ($handle, $debug) = @_;
  my $wait_seconds = 15; # default for when Twitter gives an error

  local $EVAL_ERROR = 'ARRGH!';
  my $rate_limit;
  my $seconds_to_go;
  while (1) { # loop until we get good data - sometimes there are problems
    $rate_limit = eval{$handle->rate_limit_status};
    if (not defined $EVAL_ERROR or $EVAL_ERROR =~ /^[ \t]*$/) {

      # Twitter gave us something - see if it's usable
      $seconds_to_go = $rate_limit->{reset_time_in_seconds} - time;
      if ($seconds_to_go > 0) { # good response?
        last; # off to the races!
      }
      else { # bogus - negative seconds to go - retry!
	print {*STDERR} "Twitter returned ${seconds_to_go} seconds to go\n" or
	  croak $OS_ERROR;
        next;
      }
    }

    # we had an error on the rate_limit_status call
    print {*STDERR} "Twitter returned error ${EVAL_ERROR} -- " or
      croak $OS_ERROR;
    printf {*STDERR} "pausing %.1f seconds\n", $wait_seconds or croak $OS_ERROR;
    sleep $wait_seconds; # give Twitter some space on an error
  }

  # now we have a good return - proceed
  my $rate_remaining = $rate_limit->{remaining_hits};
  my $until_rate;
  if ($rate_remaining > 0) { # calls left?
    $until_rate = $seconds_to_go/($rate_remaining);
  }
  else {# out of calls
    $until_rate = $seconds_to_go + 2;
  }
  if (not $debug) {
    return $until_rate;
  }
  my $hourly_limit = $rate_limit->{hourly_limit};
  print {*STDERR} "\nAPI calls/hour: ${hourly_limit}, " or croak $OS_ERROR;
  print {*STDERR} "left: ${rate_remaining}, " or croak $OS_ERROR;
  print {*STDERR} "seconds left: ${seconds_to_go}, " or croak $OS_ERROR;
  printf {*STDERR} "sleep: %.1f\n", $until_rate or croak $OS_ERROR;
  return $until_rate;
}

# wait on an error
sub error_wait {
  my ($handle) = @_;
  my $wait_seconds = 15; # default for when Twitter gives an error

  # when did this happen?
  my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) =
    gmtime time;
  my $timestamp = sprintf '%04d%02d%02d%02d%02d%02d',
    $year+1900, $mon+1, $mday, $hour, $min, $sec;

  my $message = $handle->{_http_response}->{_headers}->{title};
  print {*STDERR} "Twitter returned error \"${message}\" -- " or croak $OS_ERROR;
  my $seconds_to_go = rate_limit_status($handle, 0);
  if ($seconds_to_go < $wait_seconds) {
    $seconds_to_go = $wait_seconds;
  }
  printf {*STDERR} "pausing %.1f seconds\n", $seconds_to_go or croak $OS_ERROR;

  sleep $seconds_to_go;
  return $seconds_to_go;
}

1;
