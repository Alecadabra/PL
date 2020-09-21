#!/usr/bin/perl

# Recursively finds all files ending in '.conf' to stdout.
#
# By default checks root or, if given, checks $1.

# Compiler warnings
use strict;
use warnings;

use File::Find;

# Get path from args or default to root
my $dirpath = $ARGV[0];
if (not defined $dirpath) {
    $dirpath = "/";
}

# Checks a file and prints if it is a .conf
sub checkFile {
    if ($_ =~ /\.conf/) {
        print $File::Find::name."\n";
    }
}

find (\&checkFile, $dirpath);
