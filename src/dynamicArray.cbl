identification division.
program-id. dynamicArray.

data division.
	linkage section.
		01 ip1 pic 9(02).
		01 ip2 pic 9(02) value 10.
		01 op pic 9(03).

procedure division.
	compute op = ip2 + ip2.
	goback.