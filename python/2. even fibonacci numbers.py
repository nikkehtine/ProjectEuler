# Even Fibonacci numbers
# https://projecteuler.net/problem=2

max_val = 4000000


def fib_gen(limit):
    seq, next_num = [0, 1], 1
    while next_num <= limit:
        next_num = seq[-2] + seq[-1]
        seq.append(next_num) if next_num <= limit else seq
    return seq


def even_vals(list):
    even_list = []
    for i in list:
        even_list.append(i) if i % 2 == 0 else i
    return even_list


sum_of_even_vals = sum(even_vals(fib_gen(max_val)))
print(sum_of_even_vals)
