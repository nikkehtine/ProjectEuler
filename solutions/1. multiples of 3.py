# Multiples of 3 or 5
# https://projecteuler.net/problem=1


def multiples(limit):
    multiples = []
    for i in range(limit):
        if i % 3 == 0 or i % 5 == 0:
            multiples.append(i)
    return multiples


print(sum(multiples(1000)))
