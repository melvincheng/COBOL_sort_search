C = cobc
FLAGS = -free -x $^ -o
SOURCE = ./src/*.cbl

all: helloWorld linearSearch dynamicArray binarySearch bubbleSort
.PHONY: all

%: src/%.cbl
	$(C) -free -Wall -x -o bin/$@.exe $^

run:
	./bin/*.exe

.PHONY: clean
clean:
	@rm bin/*.exe bin/*.so
