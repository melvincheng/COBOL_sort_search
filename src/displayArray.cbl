identification division.
program-id. displayArray.

data division.
	working-storage section.
		01 out pic -z(2)9.
	local-storage section.
		01 iteration pic 9(3) value 1.
	linkage section.
		01 arraySize pic 9(3).
		01 array.
			05 elements pic s9(3) occurs 0 to 999 times depending on arraySize.

procedure division using arraySize, array.

	main.
	perform displayArray until iteration > arraySize
	goback.

	displayArray.
	move elements(iteration) to out
	if iteration = 1 then
		display "Printing out array".
	if iteration = arraySize then
		display out
	else
		display out" " with no advancing
	end-if.
	add 1 to iteration.
