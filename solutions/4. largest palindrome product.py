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
    # This is going to be unoptimized for now
    for x in range(100, 999):
        for y in range(100, 999):
            product = x * y
            if is_palindrome(str(product)):
                palindromes.append(product)
    return palindromes


def largest_palindrome():
    largest = 0
    for i in gen_palindromes():
        largest = i if i > largest else largest
    return largest


print(largest_palindrome())
