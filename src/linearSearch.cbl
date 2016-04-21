identification division.
program-id. LinearSearch.

data division.
	working-storage section.
	78 arraySize value 10.
	01 ws-array.
		05 ws-element pic 9(3) occurs arraySize times.

	01 target pic 9(2).
	01 arrayIndex pic 9(2) value 0.


procedure division.
	first-para.
	display "Please enter a number"
	accept target
	call 'dynamicArray' using target
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
	perform second-para until arrayIndex = arraySize
	display "Number not found in list"
	stop run.


	second-para.
	add 1 to arrayIndex
	if target = ws-element(arrayIndex) then
		display "Number found at index: "arrayIndex
		stop run.

*> identification division.
*> program-id. dynamicArray.

*> data division.
*> 	linkage section.
*> 		01 ip1 pic 9(02).
*> 		01 ip2 pic 9(02) value 10.
*> 		01 op pic 9(03).

*> procedure division.
*> 	compute op = ip2 + ip2
*> 	exit program.

*> end program dynamicArray.
*> end program LinearSearch.