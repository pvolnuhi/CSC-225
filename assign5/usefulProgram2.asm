; A very useful program.
; CSC 225, Assignment 5
; Polina Volnuhina

		.ORIG x3400

LOOPS 	AND R1, R1, #0 ;start incrementing by 1 or ADD
		ADD R1, R1, #5
LOOP	ADD R1, R1, #-1
		BRn OUTPUT		;checks if R1 negative, if so go to output
		BRzp LOOP		;if positive, goes back up to LOOP BRzp

OUTPUT  AND R1, R1, #0   ;resets R1
		LD R0, STAR
		OUT
		BRnzp LOOPS     ;whole thing starts over


STAR	.FILL x2A
		.END

