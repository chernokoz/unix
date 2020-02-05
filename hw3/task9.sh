#!/bin/sh

parallel 'curl -s "http://api.sypexgeo.net/xml/{}" | sed -nE "s!^(.*)<capital_ru>(.*)</capital_ru>(.*)!\2!gp"' < ips.txt 2>/dev/nullman
