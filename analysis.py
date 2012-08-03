#! /usr/bin/env python

import os
import sys

root = sys.argv[1] # e.g., ../101repo/contributions
suffix = sys.argv[2] # e.g., .java

def numberOfLines(filename):
    return sum(1 for line in open(filename))

filenames = list()
for pfx, dirs, files in os.walk(root):
    for basename in files:
        if basename.endswith(suffix):
            filename = os.path.join(pfx, basename)
            filenames.append(filename)

numbers = [ numberOfLines(x) for x in filenames ]
numbers.sort()
print str(len(filenames)) + " files found."
print "Mininum LOC: " + str(numbers[0])
print "Maximum LOC: " + str(numbers[len(numbers)-1])
print "Median  LOC: " + str(numbers[len(numbers)/2])
