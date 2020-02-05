#!/usr/bin/awk -f

BEGIN{FS=";"; OFS=";"}
{
	
	if ($5 in c) {
		c[$5]=c[$5]+1
	}
	else {
		c[$5]=1
	}
	if (c[$5] % 2 == 0) {
		printf "%s\t%.4f\n", $2, (sin($4)/cos($4))
	}
}
