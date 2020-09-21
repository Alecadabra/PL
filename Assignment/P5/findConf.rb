#!/usr/bin/ruby

# Recursively finds all files ending in '.conf' to stdout.
#
# By default checks root or, if given, checks $1.

require 'find'

# Get path from args or default to root
if (ARGV.length >= 1) then
    $dirpath = ARGV[0]
else
    $dirpath = "/"
end

# Run find (Supressing errors) and essentially foreach on each find
Find.find($dirpath, ignore_error: true) do |path|
    # Check for match and print accordingly
    if File.basename(path).end_with?(".conf") then
        puts path
    end
end
