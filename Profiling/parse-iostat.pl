#! /usr/bin/perl

use Date::Manip;

my $infile = shift @ARGV; # input file name
my $cpu = $infile; $cpu =~ s/$/-cpu.csv/; # CPU usage table
my $disk = $infile; $disk =~ s/$/-disk.csv/; # disk
my $part = $infile; $part =~ s/$/-part.csv/; # partition table

open INFILE, $infile or die $!;
open CPU, ">${cpu}";
open DISK, ">${disk}";
open PART, ">${part}";

my $prevtimestamp = 0; # initialize midnight crossing detector
my $cpuhead = 0; # have we written CPU header yet?
my $diskhead = 0; # have we written disk header yet?

&header;

while (<INFILE>) {
  chomp $_;
  next if $_ =~ /^[ \t]*$/; # skip blank lines

  if ($_ =~ /^Time:/) { # time of day
    &time; next;
  }

  if ($_ =~ /^\d\d\/\d\d\/\d\d/) { # time stamp (US locale!!)
    &timestamp; next;
  }

  if ($_ =~ /^avg-cpu:/) { # CPU usage
    &cpu; next;
  }

  if ($_ =~ /^Device:/) { # header for device / partition data
    &devhead; next;
  }

  # only thing left is a device/partition data line
  &devline;
}

# closing time -- you don't have to go home, but you can't stay here!
close INFILE; close CPU; close DISK; close PART; exit;

sub header {
  $header = <INFILE>; chomp $header;
  ($os, $kernel, $host, $date, $arch) = split ' ', $header;
}

sub rolloff { # rollover / offset calculations
  $firsttime = $timestamp if $prevtimestamp == 0; # for offset calculation
  $timestamp += 86400 if $timestamp < $prevtimestamp; # midnight crossing
  $offset = $timestamp - $firsttime; # time from start of run
  $prevtimestamp = $timestamp;
}

sub timestamp { # full timestamp
  $timestamp = UnixDate($_, "%o");
  &rolloff;
}

sub time {
  $_ =~ s/^Time: +//; # get rid of label
  $timestamp = UnixDate("${date} ${_}", "%o");
  &rolloff;
}

sub cpu {
  unless ($cpuhead) { # do this if we haven't written CPU header yet
    $cpuhead = $_; # copy the input line
    $cpuhead =~ tr/[A-Z]/[a-z]/; # lower case only
    $cpuhead =~ s/avg-cpu: +//; # drop first field
    $cpuhead =~ s/\%/pct_/g; # R doesn't like '%'
    $cpuhead =~ s/-/_/g; # R doesn't like arithmetic operators
    $cpuhead =~ s/\//_/g; # ditto
    $cpuhead =~ s/ +/,/g; # comma-separated values
    print CPU "timestamp,offset,${cpuhead}\n"; # send it off to the file
    $next = <INFILE>; # consume the data line -- it's history since boot
    return;
  }

  # not the first time
  $next = <INFILE>; # read data line
  $next =~ s/^ +//; # drop blanks in front
  $next =~ s/ +/,/g; # comma-separated values
  print CPU "${timestamp},${offset},${next}";
}

sub devhead {
  unless ($diskhead) { # do this if we haven't written disk header yet
    $diskhead = $_; # copy the input line
    $diskhead =~ tr/[A-Z]/[a-z]/; # lower case only
    $diskhead =~ s/://; # get rid of the colon
    $diskhead =~ s/\%/pct_/g; # R doesn't like '%'
    $diskhead =~ s/-/_/g; # R doesn't like arithmetic operators
    $diskhead =~ s/\//_/g; # ditto
    $diskhead =~ s/ +/,/g; # comma-separated values
    print DISK "timestamp,offset,${diskhead}\n"; # send it off to the file
    print PART "timestamp,offset,${diskhead}\n"; # send it off to the file
    while ($next = <INFILE>) { # consume data lines -- history since boot
      last if $next =~ /^[ \t]*$/; # first blank line and we're done
    }
    return;
  }
}

sub devline {
  $_ =~ s/ +/,/g; # CSV
  ($devname, $rest) = split /,/, $_, 2; # pick off "device" name
  if ($devname =~ /\d$/) { # does it end with a digit?
    print PART "${timestamp},${offset},${_}\n"; # update partition data
  }
  else { # whole device
    print DISK "${timestamp},${offset},${_}\n";
  }
}
