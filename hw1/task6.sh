#!/bin/sh
# -maxdepth 1 skips subdirectories; -printf "1\n" emits one line per match so wc -l counts files safely even with spaces in names
find . -maxdepth 1 -user "$(whoami)" -name "*.txt" -printf "1\n" | wc -l
