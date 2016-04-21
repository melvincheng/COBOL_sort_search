identification division.
program-id. linearSearch.

data division.
	working-storage section.
		01 target pic s9(3).
		01 arrayIndex pic 9(3) value 1.
		01 out pic Z(2)9.

	linkage section.
		01 arraySize pic 9(3).
		01 ws-array.
			05 ws-element pic s9(3) occurs 0 to 999 times depending on arraySize.


procedure division using arraySize, ws-array.
	first-para.
	display "Linear search"
	display "Please enter a number"
	accept target
	perform second-para until arrayIndex = arraySize
	display "Number not found in list"
	stop run.


	second-para.
	if target = ws-element(arrayIndex) then
		move arrayIndex to out
		display "Number found at index: "out
		stop run.
	add 1 to arrayIndex.

