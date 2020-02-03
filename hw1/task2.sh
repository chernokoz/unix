#!/bin/sh
cat src/ip.txt | xargs -n1  ping -c 1 1> res.txt 2> err.txt
