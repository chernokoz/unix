#!/bin/sh
# -printf "%f\0" prints only the filename (not full path), NUL-terminated to handle spaces/newlines in names
# sort -z / tr '\0' '\n' convert NUL-delimited stream to newlines after sorting; head takes first 10
find /etc -type f -name "*.conf" -printf "%f\0" | sort -z | tr '\0' '\n' | head
