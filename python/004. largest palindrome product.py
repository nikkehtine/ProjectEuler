# Largest palindrome product
# https://projecteuler.net/problem=4


def is_palindrome(input):
    half_1, half_2 = "", ""
    for i in range(round(len(input) / 2)):
        half_1 += input[i]
        half_2 += input[-i - 1]
    return True if half_1 == half_2 else False


def gen_palindromes():
    palindromes = []
    for x in range(100, 1000):
        for y in range(x, 1000):
            product = x * y
            if is_palindrome(str(product)):
                palindromes.append(product)
    return palindromes


print(max(gen_palindromes()))
