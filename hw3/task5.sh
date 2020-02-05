#!/bin/sh

razdel=$1
shift
man $@ | sed -n "/$razdel/,/^[[:upper:]]/p" | sed '/^[[:upper:]]*$/d'
