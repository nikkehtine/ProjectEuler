// 10001st prime
// https://projecteuler.net/problem=7

#include <math.h>
#include <stdbool.h>
#include <stdio.h>

bool isPrime(int n) {
    if (n < 2) {
        return false;
    } else if (n > 2 && n % 2 == 0) {
        return false;
    }
    const int root = sqrt(n);
    for (int i = 3; i <= root; i += 2) {
        if (n % i == 0) {
            return false;
        }
    }
    return true;
}

long long nthPrime(int target) {
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
    long long prime_number = nthPrime(10001);
    printf("%d\n", prime_number);
    return 0;
}
