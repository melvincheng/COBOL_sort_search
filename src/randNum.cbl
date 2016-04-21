identification division.
program-id. randNum.

data division.
	working-storage section.
		01 usedSeed pic 9(8).
	local-storage section.
		01 seed pic 9(10).
		01 randNum pic 9(8).
	linkage section.
		01 outNum pic 9(3).

procedure division using outNum.
	main.
	accept seed from time
	add seed to usedSeed
	move usedSeed to outNum
	if usedSeed > 90000000 then
		compute usedSeed = 99999999 - usedSeed.
	goback.
