#! /usr/bin/env python
#
# Input: a file with a list of numbers
# Output: the median of the numbers
# Algorithm:
# * Consume input with CSV API.
# * Project to first column.
# * Sort all numbers.
# * Return the median position.
#
import csv
import sys
files = csv.reader(open(sys.argv[1], 'rb'))
files = [ int(x[0]) for x in files ]
files = sorted(files)
print files[len(files)/2]
