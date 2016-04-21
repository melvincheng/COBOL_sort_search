identification division.
program-id. createArray.

data division.
	local-storage section.
		01 iteration pic 9(3) value 1.
		01 randNum pic 9(3).
	linkage section.
		01 arraySize pic 9(3).
		01 array.
			05 elements pic s9(3) occurs 0 to 999 times depending on arraySize.

procedure division using arraySize, array.
	main.
	perform createArray until iteration > arraySize
	goback.

	createArray.
	call 'randNum' using randNum
	move randNum to elements(iteration)
	add 1 to iteration.
