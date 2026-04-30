#!/bin/sh
# cal uses backspace-overstrike to highlight today: the day appears as digit_^Hdigit
# grep _ isolates that line; cat -A shows control chars; tr strips the overstrike artifacts; grep -o extracts today's two-digit number
cal | grep _ | cat -A | tr -d "_^H" | grep -o "$(date +%d)"
