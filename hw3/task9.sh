#!/bin/sh

# GNU parallel runs one curl per IP concurrently while preserving input order in output.
# sed extracts the <capital_ru> field from the XML response to get the city name.
parallel 'curl -s "http://api.sypexgeo.net/xml/{}" | sed -nE "s!^(.*)<capital_ru>(.*)</capital_ru>(.*)!\2!gp"' < ips.txt 2>/dev/nullman
