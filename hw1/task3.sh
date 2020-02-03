#!/bin/sh
head -c $(shuf -n 1 -i 0-65535) /dev/random > rnd.txt
