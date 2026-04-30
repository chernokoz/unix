#!/bin/sh
# head -c -0 reads the whole file without EOF truncation; appending to the same file doubles it in-place
head -c -0 data >> data
