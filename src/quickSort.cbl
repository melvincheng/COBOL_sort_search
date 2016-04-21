identification division.
program-id. quickSort.

data division.
	working-storage section.
		01 i pic 9(36) value 1.
		01 rightSide pic 9(3).
		01 leftSide pic 9(3).
		01 pivot pic s9(3).

		01 iteration pic 9(3) value 1.
		01 ws-left.
			05 ws-beginning pic s9(36) occurs 999 times.
		01 ws-right.
			05 ws-end pic s9(36) occurs 999 times.

	linkage section.
		01 arraySize pic 9(3).
		01 ws-array.
			05 ws-element pic s9(3) occurs 0 to 999 times depending on arraySize.


procedure division using arraySize, ws-array.
	first-para.
	perform beginQuickSort

	call 'displayArray' using arraySize, ws-array

	goback.

	*> start of quicksort 
	*> set the right side temp array to first index
	*> set the left side temp array to last index
	*> variable i used to determine if sorting is finished
	beginQuickSort.
		move 1 to ws-beginning(1)
		move arraySize to ws-end(1)
		perform quickSort until i < 1.

	quickSort.
		move ws-beginning(i) to leftSide
		move ws-end(i) to rightSide
		*> if leftside is larger than rightside, then the indexes have switched
		if leftSide < rightSide then


			move ws-element(leftSide) to pivot


			perform switch until leftSide >= rightSide

			*> sets the left index valuen as the pivot as the pivot is the first value to be replaced
			move pivot to ws-element(leftSide)

			*> saves new left starting position
			move leftSide to ws-beginning(i + 1)
			add 1 to ws-beginning(i + 1)

			*> sets current spot next right starting position
			move ws-end(i) to ws-end(i + 1)

			*> sets current left index to current right starting position
			move leftSide to ws-end(i)
			add 1 to i
		else
			subtract 1 from i
		end-if.

	switch.
		*> moves the index to the next value that is smaller than the pivot or the left index
		perform rightDec until leftSide >= rightSide or ws-element(rightSide) < pivot
		*> if the left index is smaller than the right index, then copy the right value to the left
		*> then move the left index right one 
		if leftSide < rightSide then
			move ws-element(rightSide) to ws-element(leftSide)
			add 1 to leftSide.
		*> moves the left index to either the next value that is larger than the pivot or the right index
		perform leftInc until leftSide >= rightSide or ws-element(leftSide) > pivot
		*> if the left index is smaller than the right index, then copy the left value to the right
		*> then move the right index left
		if leftSide < rightSide then
			move ws-element(leftSide) to ws-element(rightSide)
			subtract 1 from rightSide.

	rightDec.
		subtract 1 from rightSide.


	leftInc.
		add 1 to leftSide.
