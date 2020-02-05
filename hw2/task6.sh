#!/bin/sh
find . -type f -not -name "*.sh" -mtime 1 -mtime -2 -printf '%h/%f\n' | rename 's/(.*)\/(.*)/$1\/_$2/'
