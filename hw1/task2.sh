#!/bin/sh
# -n1: feed one IP per ping invocation; stdout to res.txt, stderr to err.txt
cat src/ip.txt | xargs -n1  ping -c 1 1> res.txt 2> err.txt
