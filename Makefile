C = cobc
FLAGS = -free -x -o
SOURCE = helloWorld.cbl
EXE = helloWorld.exe

helloWorld.exe : $(OBJECTS)
	$(C) $(FLAGS) $(EXE) $(SOURCE)

run:
	./$(EXE)

clean:
	@rm helloWorld.exe
