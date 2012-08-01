#!/bin/sh
#
# Find all files with a certain suffix and list LOC.
#
# Parameters:
# * $1 -- the root directory for search
# * $2 -- the suffix to search for
# * $3 -- the filename for the result
#
find $1 -name "*$2" -exec sh -c "cat {} | wc -l" \; > $3
