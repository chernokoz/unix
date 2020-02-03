#!/bin/sh
find . -maxdepth 1 -user "$(whoami)" -name "*.txt" -printf "1\n" | wc -l
