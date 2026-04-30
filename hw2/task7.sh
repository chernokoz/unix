#!/bin/sh
# -o 7200: kill only processes older than 7200 seconds (2 hours)
killall -u "$1" -o 7200
