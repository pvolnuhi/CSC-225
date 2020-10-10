		.ORIG x3500

		LDI R0, KBDR ;reads character from output
		AND R1, R1, #0
		STI R1, KBSR ;clears it 
		LDI R1, STORE
		STR R1, R6, #0
		RTI

STORE	.FILL x32FF
KBDR	.FILL xFE02
KBSR	.FILL xFE00
		.END
