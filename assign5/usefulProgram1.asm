; A very useful program.
; CSC 225, Assignment 5
; Polina Volnuhina

        .ORIG x3000

        ; TODO: Set the Trap Vector Table.
        LD R1, SUBR1
        STI R1, TRAP26

        ; TODO: Set the Interrupt Vector Table.
        LD R1, SUBR2
        STI R1, IVT ;may need to clear R1 afterwards...

        ; TODO: Initialize the stack pointer.
        LD R6, SUBR3 ;LD R1, SUBR3, STI R1, IVT
        

MAIN    LEA R0, INITMSG ; Print the starting message.
        PUTS
        TRAP x26        ; Get a character.
        OUT             ; Print the character.
        TRAP x26        ; Repeat four more times.
        OUT
        TRAP x26
        OUT
        TRAP x26
        OUT
        TRAP x26
        OUT
        LEA R0, ENDMSG  ; Print the ending message.
        PUTS
        BRnzp MAIN


SUBR1   .FILL x3300
TRAP26  .FILL x0026
SUBR2   .FILL x3500
IVT     .FILL x180
SUBR3   .FILL x3000

INITMSG .STRINGZ "Enter five characters: "
ENDMSG  .STRINGZ "\nSuccess! Running again...\n\n"
        .END