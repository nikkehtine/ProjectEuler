# 1000-digit Fibonacci Number
# https://projecteuler.net/problem=25


# This is just copy-pasted from my Problem 2 solution (Even Fibonacci numbers)
# and slightly modified for the purposes of this problem
# This might be messy code and I might refactor it in the future
def fib_gen_first_term(limit):
    seq, next_num, digit_len = [1, 1], 0, 0
    while digit_len < limit:
        next_num = seq[-2] + seq[-1]
        digit_len = len(str(next_num))
        seq.append(next_num)
    return len(seq)


print(fib_gen_first_term(1000))
