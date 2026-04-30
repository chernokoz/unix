#!/bin/sh
# -u removes duplicate lines, -R shuffles randomly; cat -n prepends line numbers
sort -uR input.txt | cat -n
