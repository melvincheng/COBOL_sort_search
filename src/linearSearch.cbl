identification division.
program-id. LinearSearch.

Data division.
	working-storage section.
	78 arraySize value 10.
	01 ws-array.
		05 ws-element pic 9(3) occurs arraySize times.

	01 target pic 9(2).
	01 arrayIndex pic 9(2) value 0.


procedure division.
	firstparagraph.
	display "Please enter a number"
	accept target
	move 1 to ws-element(1)
	move 2 to ws-element(2)
	move 3 to ws-element(3)
	move 4 to ws-element(4)
	move 5 to ws-element(5)
	move 6 to ws-element(6)
	move 7 to ws-element(7)
	move 8 to ws-element(8)
	move 9 to ws-element(9)
	move 10 to ws-element(10)
	perform second-para until arrayIndex = 10
	display "Number not found in list"
	stop run.


	second-para.
	add 1 to arrayIndex
	if target = ws-element(arrayIndex) then
		display "Number found at index: "arrayIndex
		stop run.
	