# Largest palindrome product
# https://projecteuler.net/problem=4


def is_palindrome(input):
    reversed = ""
    for i in range(len(input)):
        reversed += input[-i - 1]
    return True if reversed == input else False
    # This could be optimized as you can just check two halves of the input
    # (rounded upwards if odd length)
