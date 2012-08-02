#! /usr/bin/perl -w
my ($link) = @ARGV;
print "Fetching ${link}\n";
my @fields = split /\//, $link;
my $md5sum = "${fields[4]}  ${fields[5]}\n";
system "echo \'${md5sum}\' | head -n 1 > ${fields[5]}.md5";
system "curl ${link} > ${fields[5]}";
system "md5sum -c ${fields[5]}.md5";
exit;
