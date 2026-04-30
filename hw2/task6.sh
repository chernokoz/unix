#!/bin/sh
# -mtime 1 -mtime -2: modified at least 1 day ago but less than 2 days ago
# rename prepends '_' to the filename part while keeping the directory path intact
find . -type f -not -name "*.sh" -mtime 1 -mtime -2 -printf '%h/%f\n' | rename 's/(.*)\/(.*)/$1\/_$2/'
