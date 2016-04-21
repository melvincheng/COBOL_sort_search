identification division.
program-id. bubbleSort.

data division.
	working-storage section.
		01 iteration pic 9(3) value 1.
		01 bubbleIter pic 9(3) value 1.
		01 temp pic 9(3).

	linkage section.
		01 arraySize pic 9(3).
		01 ws-array.
			05 ws-element pic s9(3) occurs 0 to 999 times depending on arraySize.

procedure division using arraySize, ws-array.
	first-para.
	perform bubbleSort until iteration > arraySize
	call 'displayArray' using arraySize,ws-array
	goback.

	bubbleSort.
	perform innerBubbleSort until bubbleIter > arraySize - 1
	add 1 to iteration
	move 1 to bubbleIter.

	innerBubbleSort.
	if ws-element(bubbleIter) > ws-element(bubbleIter + 1) then
		move ws-element(bubbleIter) to temp
		move ws-element(bubbleIter + 1) to ws-element(bubbleIter)
		move temp to ws-element(bubbleIter + 1).
	add 1 to bubbleIter.
	