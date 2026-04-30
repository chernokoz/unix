#!/bin/sed -f

# Wrap entire output in HTML skeleton
1i<html><body>
# Convert "Name:email@..." patterns to mailto links (CSV uses : as separator here)
s!\(.*\):\(.*\)!\1:<a href="mailto:\2" target="_blank" rel="noopener noreferrer">\2</a>!g
# Append <br> to each line so the browser renders line breaks
s!\(.*\)!\1<br>!g
$a</body></html>
