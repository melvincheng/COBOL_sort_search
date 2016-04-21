identification division.
program-id. MAIN.

data division.
	working-storage section.
	01 arraySize pic 9(3).
	01 inputString pic x(30).
	01 ws-array.
		05 elements pic s9(3) occurs 0 to 999 times depending on arraySize.

procedure division.
	display "Please enter the number of numbers in the array"
	accept arraySize.
	if arraySize < 1 or arraySize > 100 then
		stop run.
	call 'createArray' using arraySize, ws-array
	call 'displayArray' using arraySize, ws-array
	display "Please enter a command:"
	display "-Linear search (linearSearch)"
	display "-Binary search (binarySearch)"
	display "-Bubble sort (bubbleSort)"
	display "-Quick sort (quickSort)"
	accept inputString
	if inputString = 'exit' then
		stop run.
	call inputString using arraySize, ws-array.
