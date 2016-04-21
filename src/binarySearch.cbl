identification division.
program-id. BinarySearch.

data division.
	working-storage section.
	78 arraySize value 11.
	01 ws-array.
		05 ws-element pic s9(3) occurs arraySize times.

	01 target pic s9(3).

	01 pivot pic 9(3).

	01 max pic 9(3) value arraySize.
	01 min pic 9(3) value 1.
	01 out pic Z(2)9.

procedure division.
	first-para.
	display "Please enter a number"
	accept target
	move -1 to ws-element(1)
	move 1 to ws-element(2)
	move 2 to ws-element(3)
	move 3 to ws-element(4)
	move 4 to ws-element(5)
	move 5 to ws-element(6)
	move 6 to ws-element(7)
	move 7 to ws-element(8)
	move 8 to ws-element(9)
	move 9 to ws-element(10)
	move 10 to ws-element(11)

	perform binarySearch until min > max
	display "Number not found"
	stop run.


	binarySearch.
	compute pivot = (max + min)/2
	if target = ws-element(pivot) then
		move pivot to out
		display "Number found at index: "out
		stop run.
	if target > ws-element(pivot) then
		add 1 to pivot
		move pivot to min.
	if target < ws-element(pivot) then
		subtract 1 from pivot
		move pivot to max.
