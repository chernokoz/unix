#!/bin/sh
# factor reads numbers from stdin and prints their prime factorization
factor < "$1" > "$2"
# cat $1 | xargs -n1 factor > $2
