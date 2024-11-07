// 10001st prime
// https://projecteuler.net/problem=7

#include "lib/prime.h"
#include <math.h>
#include <stdbool.h>
#include <stdio.h>

long long nth_prime(int target) {
    int n;
    for (int i = 1; n < target; i++) {
        if (!isPrime(i)) {
            continue;
        }
        n++;
        if (n == target)
            return i;
    }
}

int main(void) {
    long long prime_number = nth_prime(10001);
    printf("%d\n", prime_number);
    return 0;
}
