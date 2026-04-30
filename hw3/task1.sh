#!/bin/bash
# Matches: TypeInCamelCase<whitespace>varInCamelCase_?; or TypeInCamelCase<whitespace>m_var_?;
# [A-Z][[:alnum:]]* — type starts with uppercase; ([a-z]|m_)[[:alnum:]]*_? — var starts with lowercase or m_
grep -Ps '^[A-Z][[:alnum:]]*[[:space:]]+([a-z]|m_)[[:alnum:]]*_?;$'
