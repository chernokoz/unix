#!/bin/sh

perl -pe 's!(?<=\d)(\d\d\d)(?=(\d\d\d)*\b)!-\1!g'
