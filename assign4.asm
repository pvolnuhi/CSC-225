; CSC 225, Assignment 4
; <name(s)>

        .ORIG x3000

        ; Example of printing Question 1: Q1STR is the address of an address in
        ;  the data file, so we have to make two passes using an LDI.
        LDI R0, Q1STR
        PUTS

        ; Example of using GETI -- uncomment when ready to use:
        ; TRAP x26

        ; Example of loading the address of the Question 1 points array.
        LD R0, Q1PTS

        ; Example of accessing index 2 in the Question 1 points array:
        ADD R0, R0, #2 ; You probably won't want an immediate here...
        LDR R0, R0, #0

        HALT

Q1STR   .FILL x3500
Q1PTS   .FILL x3501
Q2STR   .FILL x3505
Q2PTS   .FILL x3506
Q3STR   .FILL x350A
Q3PTS   .FILL x350B
RESULTS .FILL x350F
        .END