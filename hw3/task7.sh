#!/usr/bin/awk -f

BEGIN { FS = ";" }

NR > 1{
	# Only process names of even length that start with a consonant (not A E I O U Y)
	if (!(match($1, "^[AEIOUY].*")) && (length($1) % 2==0))
	{
		k=0
		n=length($2)
		# Count mismatched character pairs from both ends; a palindrome needs k==0,
		# one-substitution fix needs k==1 (or k==0, replacing a char with itself)
		for (i = 1; i < n / 2; i++) {
			a = substr($2, i, 1)
			b = substr($2, n-i+1, 1)
			if (a!=b) {
				k=k+1
			}
			#printf "%s %s \n", a, b
		}
		if (k<2) {
			print $1,"~YES"
		}
		else {
			print $1,"~NO"
		}
	}
}
