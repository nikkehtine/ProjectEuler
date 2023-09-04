# Even Fibonacci numbers
# https://projecteuler.net/problem=2

def fib_gen(limit):
    seq = [0, 1]
    while True:
        next_num = seq[-2] + seq[-1]
        if next_num <= limit:
            seq.append(next_num)
        else:
            break
    return seq

def even_vals(list):
    even_list = []
    for i in list:
        if i % 2 == 0:
            even_list.append(i)
    return even_list

max_val = 4000000
sum_of_even_vals = sum(even_vals(fib_gen(max_val)))

print(sum_of_even_vals)
