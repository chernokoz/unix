#!/bin/sh

razdel=$1
shift
# sed -n prints only the range from the section header to the next all-caps header,
# then drops the header line itself (all-uppercase lines) to leave only the body text
man $@ | sed -n "/$razdel/,/^[[:upper:]]/p" | sed '/^[[:upper:]]*$/d'
