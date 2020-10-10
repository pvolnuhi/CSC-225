/**
 * CSC 225, Assignment 6
 */

#include <stdlib.h>
#include "stack.h"
#include <stdio.h>

/**
 * Pushes a value onto a stack of integers.
 * stack - The array containing the stack
 * size - A pointer to the number of elements in the stack
 * val - The value to push
 *
 * Returns 0 on success, 1 on overflow.
 */
int push(int stack[], int *size, int val) {
    /* TODO: Complete this function. */
    if (*size < MAX_SIZE) //if stack is less than capacity
    {
        stack[++(*size)] = val; //add it on
        return 0;
    } else {
        if (*size >= MAX_SIZE) {
            return 1; //overflow
        }

    }


/**
 * Pops a value off of a stack of integers.
 * stack - The array containing the stack
 * size - A pointer to the number of elements in the stack
 * val - A pointer to the variable in which to place the popped value
 *
 * Returns 0 on success, 1 on underflow.
 */
int pop(int stack[], int *size, int *val) {
    /* TODO: Complete this function. */
    if (*size >= 0) {
        *val = stack[--(*size)];
        return 0; //success
    } else {
        if (*size <= 0) {
            return 0;
        }
    }
}


/**
 * Prints a stack of integers.
 * stack - The array containing the stack
 * size - The number of elements in the stack
 * mode - How to print elements, one of: DEC_MODE, HEX_MODE, or CHAR_MODE
 */
void printStack(int stack[], int size, int mode) {
            /* TODO: Complete this function. */

            int i;    //CHECK THIS OVER
            //printf("Stack: ");

            if (size == 0) {
                printf("[]\n");

            } else {
                printf("[");
                if (mode == HEX_MODE) {
                    printf("0x%X", stack[0]); //%X
                    for (i = 1; i < size; i++) {
                        printf(", 0x%X", stack[i]);
                    }
                }
                    //printf("]\n");

                else if (mode == DEC_MODE) {
                    //printf("[")
                    printf("%d", stack[0]); //dec
                    for (i = 1; i < size; i++) {
                        printf(", %d", stack[i]); //dec
                    }
                }
                    //printf("]\n");

                else {
                    //printf("[");
                    for (i = 0; i < size; i++) {
                        printf("'%c'", stack[i]);
                        //printf("]");
                    }
                    //handle case where options is blank and stack underflow
                }
            }
            printf("]\n");
        }
    }
    


