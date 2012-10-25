#! /usr/bin/perl -w

# table of how many lines to skip for each command type
my %skips = ();
$skips{'PING'} = 0;
$skips{'SET'} = 2;
$skips{'GET'} = 1;
$skips{'INCR'} = 1;
$skips{'LPUSH'} = 2;
$skips{'LPOP'} = 1;
$skips{'SADD'} = 2;
$skips{'SREM'} = 2;
$skips{'SPOP'} = 1;
$skips{'LRANGE'} = 3;
$skips{'MSET'} = 20;

&header;

while (<>) {
  last if $_ =~ /\(/; # exit on a left paren
  my $id = $_; chomp $id;
  my $timestamp = <>; chomp $timestamp;
  my $microseconds = <>; chomp $microseconds;
  my $command = <>; chomp $command;
  print "${id},${timestamp},${microseconds},${command}\n";
  next if $skips{$command} == 0; # PING has no arguments
  for ($i=0; $i<$skips{$command}; $i++) {
    my $dummy = <>;
  }
}
exit;

sub header {
  print "id,timestamp,microseconds,command\n";
}
