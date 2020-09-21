#!/bin/bash

# Recursively finds all files ending in '.conf' to stdout in find's default
# format.
#
# By default checks root or, if given, checks $1.

# Get path or default to root
if [ $# = 0 ]
then
    dir=/
else
    dir=$1
fi

# Use find, specify to look for files match `*conf`
find $dir -type f -name '*.conf' 2>/dev/null
