# CSCI3055U - Programming Languages
### Language used - COBOL
#### Implemented
##### -Linear search
##### -Binary search
##### -Bubble sort
##### -Quick sort

###Build tools
##### OpenCOBOL/GNUCOBOL

###Alternatives
#####In order to solve the same problem using another language, many things would be done the same or similarly. This includes the linear search, binary search, and bubble sort. However, the array creation function would most likely not be split into 3 different functions. 
####Random number generator
#####Most modern languages have a simple random number generator that generates a new number each time it is called whereas requires the user to manually assign a seed. This is done by using the built in time function. However, unlike modern languages, the time function returns on one specific value per run, therefore, calculations needs to be make in order to change the seed. 
####Quick sort
#####In modern languages, quick sort is usually done using recursion. First, partition. In order to partition, a pivot is chosen randomly from the list. Then all values smaller than the pivot go on one side and everything greater than it goes on the other. Then recursively do the same steps to the separated lists. However, because COBOL does not support local scope, recursion is extremely difficult, if not impossible. The steps to solving this problem are very similar, however, the main difference is that recursion is not used.
##COBOL
###Divisions
######COBOL is broken up into divisions. The first division, identification division is used to identify the program. This is the only require division. The second division is the data division where data is declared. The third division is the procedure division where the actual code is written. Division are then divided up into sections. Data division can be divided into many sections. Some of these sections are working-storage section where most of the variables are declared. Variables declared here are considered global, meaning any function or sub-routine call will obtain the same value. Another section used is the local-storage section which is similar to working-storage section. Local-storage section differs in that each functions and sub-routines have their own instance of the variables. The last section used is the linkage section. This last section allows variables to be alter between sub-routines and a main program. This is similar to pass by reference in C++. 
####Variable declaration
#####Type declaration is done through something called a picture clause. The picture clause contains the type the variable is, and how many characters it can store. The type can range from alphanumerical(x) to numerical(9) to alphabetical(a). S can be added to 9 to become a signed numerical (s9) and v can be added to include decimals. Number of characters cannot exceed 36. Values can be set by writing VALUE after the picture clause called a value clause.
#####Paragraphs
######COBOL can use something called paragraphs or sections instead of functions. Paragraphs are usually ran sequentially from top to botton. However, control flow in COBOL allows the keyword PERFORM to run the paragraph. It is similar to function calls in other modern languages. However, due to no local scope, values changed in one paragraph changes the variables for the rest of the program.
```COBOL
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
```
```COBOL
data division.
	working-storage section.
		01 out pic -z(2)9.
	local-storage section.
		01 iteration pic 9(3) value 1.
	linkage section.
		01 arraySize pic 9(3).
		01 array.
			05 elements pic s9(3) occurs 0 to 999 times depending on arraySize.
```
Lists, called tables in COBOL, can be initialized by having a level number of 1 then entries with a level number of 5 below it. The number of elements are declared by writing OCCURS number TIMES.

```COBOL
01 array.
05 elements pic 9(10) occurs 10 times.
```
To redefine a variable, the word MOVE is used. COMPUTE can be used to do arithmetic and redefine variables similar to modern languages. Arithmetic can be done with special words like ADD SUBTRACT MULTIPLY. These words are very similar to += operator on more modern languages.
```COBOL
move 1 to var1
compute var1 = var2 + 1
add 1 to var1
```
![COBOL IS OLD](https://octodex.github.com/images/father_timeout.jpg  "COBOL IS OLD" )
