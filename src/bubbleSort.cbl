identification division.
program-id. bubbleSort.

data division.
	working-storage section.
		78 arraySize value 11.
		01 ws-array.
			05 ws-element pic s9(3) occurs arraySize times.
		*> 01 iteration pic 9(3) value 1.
		01 bubbleIter pic 9(3) value 1.

		01 out pic -Z(2)9.

	local-storage section.
		01 iteration pic 9(3) value 1.

procedure division.
	first-para.
	move 10 to ws-element(1)
	move 9 to ws-element(2)
	move 8 to ws-element(3)
	move 7 to ws-element(4)
	move -6 to ws-element(5)
	move 5 to ws-element(6)
	move 4 to ws-element(7)
	move 3 to ws-element(8)
	move 2 to ws-element(9)
	move 1 to ws-element(10)
	move -11 to ws-element(11)
	perform displayArray until iteration > arraySize
	move 1 to iteration
	perform bubbleSort until iteration > arraySize
	move 1 to iteration
	perform displayArray until iteration > arraySize
	stop run.

	displayArray.
	move ws-element(iteration) to out
	if iteration = 1 then
		display "Printing out array".
	if iteration = arraySize then
		display out
	else
		display out" " with no advancing
	end-if.
	add 1 to iteration.

	bubbleSort.
	perform innerBubbleSort until bubbleIter > arraySize - 1
	add 1 to iteration
	move 0 to bubbleIter.

	innerBubbleSort.
	if ws-element(bubbleIter) > ws-element(bubbleIter + 1) then
		add ws-element(bubbleIter + 1) to ws-element(bubbleIter)
		compute ws-element(bubbleIter + 1) = ws-element(bubbleIter) - ws-element(bubbleIter + 1)
		subtract ws-element(bubbleIter + 1) from ws-element(bubbleIter).
	add 1 to bubbleIter.
	