#!/bin/sed -f

1i<html><body>
s!\(.*\):\(.*\)!\1:<a href="mailto:\2" target="_blank" rel="noopener noreferrer">\2</a>!g
s!\(.*\)!\1<br>!g
$a</body></html>
