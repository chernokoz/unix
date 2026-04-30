#!/bin/sh

# Lookbehind (?<=\d) and lookahead (?=(\d\d\d)*\b) ensure we only insert '-' before groups
# of exactly 3 digits that align to a word boundary, grouping from the right.
perl -pe 's!(?<=\d)(\d\d\d)(?=(\d\d\d)*\b)!-\1!g'
