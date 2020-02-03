#!/bin/sh
find /etc -type f -name "*.conf" -printf "%f\0" | sort -z | tr '\0' '\n' | head
