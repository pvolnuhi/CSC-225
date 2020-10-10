	   
	   .ORIG x3300

       STI R7, SAVE ;ST maybe instead
       ;LD R3, UP2

       LDI R0, KBSR ;get the keyboard status
       LD R1, BIT
       ADD R0, R0, R1 ;
       STI R0, KBSR ;

       ;BRzp LOOP ;poll the keyboard
       ;LDI R0, KBDR ;get the typed key
       ;LD R2, BACK


LOOP2  LDI R1, DSR ; get the display status
       BRzp LOOP2 ;poll the display status
       ;STI R0, DDR print the typed key

       LD R7, UP2
       JMP R7
       RET

       KBSR .FILL xFE00
       KBDR .FILL xFE02
       DSR .FILL xFE04
       DDR .FILL xFE06
       BACK .FILL xFFD0
       SAVE .FILL x32FF
       UP2 .FILL x3400
       BIT .FILL x4000

.END

