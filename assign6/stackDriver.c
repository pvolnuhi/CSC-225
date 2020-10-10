#include <stdio.h>
#include <stdlib.h>
#include "stack.h"
#include "stackFuncs.c"

int main() {
    int stack[MAX_SIZE]; //CHECK THIS OVER!
    int size = 0;
    char option = '0';
    int number = 0;
    int val = 0;
    int mode = DEC_MODE;
    printf("Welcome to the stack program.\n\n");    
    while (option) //input
    {
        printf("Enter option: ");
        scanf(" %c", &option);
        
        if (option == 'q') //start with checking nothing first
        {
            printf("Goodbye!\n");
            exit(0); //ends program
        } 

        else if (option == '+') 
        {
            printf("What number? ");
            scanf(" %d", &number); //prints out int
            if (push(stack, &size, number) == 1) 
            {
                printf("Error: Stack overflow!\n");
                printf("Stack: ");
                printStack(stack, size, mode);
                printf("\n\n");
            } 
            else 
            {
                printf("Stack: ");
                printStack(stack, size, mode);
                printf("\n\n");
            }
        } 
        else if (option == '-') 
        {
            if (pop(stack, &size, &val) == 1) 
            {
                printf("Error: Stack underflow!\n");
                printf("Stack: []\n\n");
            } else {
                printf("Popped %d.\n", val);
                printf("Stack: ");
                printStack(stack, size, mode);
                printf("\n\n"); 
            }           
        } else if (option == 'd') {
            mode = DEC_MODE;
            printf("Stack: ");
            printStack(stack, size, mode);
            printf("\n\n");
        } else if (option == 'x') {
            mode = HEX_MODE;
            printf("Stack: ");
            printStack(stack, size, mode);
            printf("\n\n");
        } else {
            mode = CHAR_MODE;
            printf("Stack: ");
            printStack(stack, size, mode);
            printf("\n\n");
        }
    }
    return 0;
}