#!/bin/sh
cal | grep _ | cat -A | tr -d "_^H" | grep -o "$(date +%d)"
