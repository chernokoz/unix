#!/bin/sh
# Deduplicate lines (-u), shuffle randomly (-R), then number each output line
sort -uR input.txt | cat -n
