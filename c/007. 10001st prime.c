// 10001st prime
// https://projecteuler.net/problem=7

#include <math.h>
#include <stdbool.h>
#include <stdio.h>

#include "lib/prime.h"

long long nthPrime(int target) {
    int n = 0;
    for (int i = 1; n < target; i++) {
        if (!isPrime(i)) {
            continue;
        }
        n++;
        if (n == target)
            return i;
    }
    return 0;
}

int main(void) {
    long long prime_number = nthPrime(10001);
    printf("%lld\n", prime_number);
    return 0;
}
