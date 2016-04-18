IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO-WORLD.

*> PROCEDURE DIVISION.
*> A0000-FIRST-PARA SECTION.
*> FIRST-PARAGRAPH.
*> ACCEPT WS-ID
*> MOVE '10' TO WS-ID
*> DISPLAY WS-ID.

*> ENVIRONMENT DIVISION.
*> CONFIGURATION SECTION.
*>    SOURCE-COMPUTER. XXX-ZOS.
*>    OBJECT-COMPUTER. XXX-ZOS.

*> INPUT-OUTPUT SECTION.
*>    FILE-CONTROL.
*>    SELECT FILEN ASSIGN TO DDNAME
*>    ORGANIZATION IS SEQUENTIAL.

Data division.
	working-storage section.
	01 ws-student pic a(30).
	01 ws-id pic 9(5) value 1000.

	local-storage section.
	01 ls-class pic 9(3).


PROCEDURE DIVISION.
	a000-first-para.
	DISPLAY 'Hello world!'.
	move 'new string' to ws-student.
	display "student name is : "ws-student.
	display "student id is : "ws-id.
STOP RUN.