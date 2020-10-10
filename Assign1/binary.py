# Implements operations on binary numbers.
# CSC 225, Assignment 1
# Given code, Winter '20


def add(addend_a, addend_b):

    # if not addend_a or not addend_b: #looking for valid input
    #     return " "

    max_length = max(len(addend_a), len(addend_b)) #whichever has longest length, so 8 bits

    addend_a = addend_a.zfill(max_length)  #take the longest bit string and fill in 0's if other bit string doesn't have enough
    addend_b = addend_b.zfill(max_length)  #if not enough bits, fills in with leading zeros to give it space

    result = ''
    carry = 0

    for i in range(max_length-1, -1, -1):
        r = carry
        if (addend_a[i] == '1'):
            r +=1
        else:
            0
            #r = 0 can't do that or else resets it when looking at next number

        if(addend_b[i] == '1'):
            r +=1
        else:
            0
            #r = 0

        result = ('1' if r % 2 == 1 else '0') + result
        carry = 0 if r < 2 else 1

    if(carry != 0):
        result = '1' + result

    return result.zfill(max_length)

    """
    Add two 8-bit, two's complement binary numbers; ignore carries/overflows.
    TODO: Implement this function. Do *not* convert the numbers to decimal.
    :param addend_a: A bitstring representing the first number
    :param addend_b: A bitstring representing the second number
    :return: A bitstring representing the sum
    """
    pass


def negate(number): #can't traverse through ints, so need to convert to list and then to string

    complement = []
    result = ''
    for x in [list(str(x)) for x in number]:
        complement.append(''.join(['%s' % (int(x) ^ 1) for x in x]))
        str_comp = ''.join(complement)
        result = add(str_comp, '1') 
    return result

    """
    Negate an 8-bit, two's complement binary number.
    TODO: Implement this function. Do *not* convert the number to decimal.
    :param number: A bitstring representing the number to negate
    :return: A bitstring representing the negated number
    """
    pass


def subtract(minuend, subtrahend):

    max_length = max(len(minuend), len(subtrahend)) #whichever has longest length, so 8 bits

    minuend = minuend.zfill(max_length)  #take the longest bit string and fill in 0's if other bit string doesn't have enough
    subtrahend = subtrahend.zfill(max_length)  #if not enough bits, fills in with leading zeros to give it space

    result = ''
    carry = 0

    for i in range(max_length-1, -1, -1):
        r = carry
        s = int(minuend[i]) - int(subtrahend[i])
        if (s == -1): # case: 0-1 
            if (carry == 0):
                carry = 1
                result = '1' + result
            else:
                0
        elif (s == 0): # case: 1-1 or 0-0
            if(carry == 0):
                carry = 1
                result = '1' + result
            else:
                0
        else: # case: 1-0
            if (carry == 0):
                carry = 1 #1
                result = '1' + result
            else:
                0

    return result.zfill(max_length)
    """
    Subtract one 8-bit, two's complement binary number from another.
    TODO: Implement this function. Do *not* convert the numbers to decimal.
    :param minuend: A bitstring representing the number from which to subtract
    :param subtrahend: A bitstring representing the number to subtract
    :return: A bitstring representing the difference
    """


    pass


def binary_to_decimal(number):

    max_length = len(number) #length of string
    
    base_one = 1
    num = number
    dec_val = 0
    for i in range(max_length-1, -1, -1):
        if(num[i] == '1'):
            dec_val += base_one
        base_one = base_one * 2 # else if num[i == 0, then base_one = 2

    return dec_val


    """
    Convert an 8-bit, two's complement binary number to decimal.
    TODO: Implement this function.
    :param number: A bitstring representing the number to convert
    :return: An integer, the converted number
    """


    pass


def decimal_to_binary(number):

    #max_length = len(number)

    return bin(number)[2:].zfill(8)

    """
    Convert a decimal number to 8-bit, two's complement binary.
    TODO: Implement this function.
    :param number: An integer, the number to convert
    :return: A bitstring representing the converted number
    :raise OverflowError: If the number cannot be represented with 8 bits
    """
    pass





