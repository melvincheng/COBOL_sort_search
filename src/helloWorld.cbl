identification division.
program-id. helloWorld.

Data division.
	working-storage section.
	01 ws-student pic a(30).
	01 ws-id pic 9(5) value 100.
	01 ws-decimal pic v99.

	01 ws-test1 pic x(30).
	01 ws-test2 pic a(30).

	78 arraySize value 10.
	01 ws-array.
		05 ws-element pic 9(3) occurs arraySize times.

	01 randomresult pic v9(10).
	01 seed pic 9(8).


	01 target pic 9(2).
	01 arrayIndex pic 9(2) value 0.

	local-storage section.
	01 ls-class pic 9(3).


procedure division.
	firstparagraph.
	accept target
	*> accept ws-test1.
	*> accept ws-test2.
	*> if ws-test1 is alphabetic or ws-test2 is alphabetic then
	*> 	display "cannot letters"
	*> 	stop run.
	*> if ws-test1 > ws-test2 then
	*> 	display "greater than"
	*> 	stop run.

	*> display 'Hello world!'.
	*> move 'new string' to ws-student.
	*> display "student name is : "ws-student.
	*> display "student id is : "ws-id.
	*> display "class is : "ls-class.
	*> move 100 to ls-class.
	*> display "class is : "ls-class.
	*> move 200 to ls-class.
	*> display "class is : "ls-class.
	*> display ws-decimal.


	*> accept seed from time.
	*> display "Seed: "seed.
	*> compute randomresult = function random (seed).
	*> display randomresult.
	*> compute ws-element(1) = randomresult*100.
	*> display ws-element(1).
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
	