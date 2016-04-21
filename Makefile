all: linearSearch binarySearch bubbleSort quickSort displayArray createArray randNum
.PHONY: all

%: src/%.cbl
	cobc -free -Wall -x -o bin/main.exe src/main.cbl
	cobc -free -Wall -o bin/$@.so $^

run:
	./bin/*.exe

.PHONY: clean
clean:
	@rm bin/*.exe bin/*.so