#!/usr/bin/awk -f

BEGIN{FS=";"; OFS=";"}
{
	# c[$5] tracks how many animals of each color have been seen so far
	if ($5 in c) {
		c[$5]=c[$5]+1
	}
	else {
		c[$5]=1
	}
	# An even count means an odd number of same-color predecessors — this animal enters the tournament
	if (c[$5] % 2 == 0) {
		printf "%s\t%.4f\n", $2, (sin($4)/cos($4))
	}
}
