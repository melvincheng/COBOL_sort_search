identification division.
program-id. binarySearch.

data division.
	working-storage section.
		01 target pic s9(3).
		01 pivot pic 9(3).
		01 max pic 9(3).
		01 min pic 9(3) value 1.
		01 out pic -Z(2)9.
	linkage section.
		01 arraySize pic 9(3).
		01 ws-array.
			05 ws-element pic s9(3) occurs 0 to 999 times depending on arraySize.

procedure division using arraySize, ws-array.
	
	first-para.
	display "Binary search"
	display "Please enter a number"
	accept target
	call 'bubbleSort' using arraySize, ws-array
	compute max = arraySize
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
