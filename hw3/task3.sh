# Strip // line comments, replace newlines with NUL to allow /* */ to span lines,
# remove /* */ block comments with Perl (non-greedy), restore newlines,
# then extract header names from #include directives and strip extensions.
sed -re 's!//.*!!g' file.c | tr "\n" "\0" | perl -pe 's!\/\*.*?\*\/!!g' | tr "\0" "\n" | sed -re 's!^[[:space:]]*#include[[:space:]]*(<([^>]*)>|"([^"]*)")!\n\2\3!g
/^\n/!d
s!\n!!
s!(.*)\..*!\1!'
