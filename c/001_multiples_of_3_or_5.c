// Multiples of 3 or 5
// https://projecteuler.net/problem=1

#include <stdio.h>

#define TARGET = 1000

int main() {
    long long sum = 0;
    for (size_t i = 1; i < 1000; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
        }
    }
    printf("%lld\n", sum);
    return 0;
}
