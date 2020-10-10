	.ORIG x3000 	;starts at x3000
	LEA R0, INPUT1  ;loads char into R0
	PUTS 			;prompts encryption key from user
	GETC 			;read char
	OUT 			;write the char
	LD R1, MINUS    ;load that value into R1
	ADD R2, R1, R0  ;subtract R1 from R0 to convert ASCII to int, then store in R2

	LEA R0, INPUT2  ;loads char into R0
	PUTS 			;asks input message from user
	LEA R3, NUM 	;saves memory add in R3
IOLOOP GETC 		;reads char
	OUT 			;write char
	STR R0,R3,#0  	;store clear char in R3-->R0
	ADD R3,R3,#1	;increment by 1
	ADD R0,R0,#-10  ;?????? R0-R0-newline
	BRnp IOLOOP  	;break out of loop if new line,  loops back

	LEA R3 NUM		;saves address of input-->R3
	LDR R0, R3, #0
LOOP AND R1,R1, #0  ;clear R0
	ADD R1, R1, #0  ;mask bit  to toggle
	


