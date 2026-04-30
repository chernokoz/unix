#!/bin/sh
# shuf picks a random byte count in [0, 65535]; head reads exactly that many bytes from /dev/random
head -c $(shuf -n 1 -i 0-65535) /dev/random > rnd.txt
