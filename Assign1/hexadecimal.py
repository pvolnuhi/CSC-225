# Implements operations on hexadecimal numbers.
# CSC 225, Assignment 1
# Given code, Winter '20


def binary_to_hex(number):

    bin_num = int(number, 2)
    hex_num = ("0x0%X" % bin_num)
    result = hex_num
    
    return result

    """
    Convert a 16-bit binary number to hexadecimal.
    TODO: Implement this function.
    :param number: A bitstring representing the number to convert
    :return: A hexadecimal string, the converted number
    """
    pass


def hex_to_binary(number): 
    n = int(number, 16)
    bStr = '' 
    while n > 0: 
        bStr = str(n % 2) + bStr 
        n = n >> 1    
    res = bStr 
    return res.zfill(16)

    """
    Convert a hexadecimal number to 16-bit binary.
    TODO: Implement this function.
    :param number: A hexadecimal string, the number to convert
    :return: A bitstring representing the converted number
    """
    pass
