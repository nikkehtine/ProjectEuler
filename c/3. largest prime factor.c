// Largest prime factor
// https://projecteuler.net/problem=3

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

typedef enum { false, true } bool;
const long long big_int = 600851475143;

bool isPrime(long n) {
    if (n < 2 || (n % 2 == 0 && n != 2)) {
        return false;
    } else if (n == 2) {
        return true;
    }
    for (int i = 3; i <= sqrt(n); i += 2) {
        if (n % i == 0) {
            return false;
        }
    }
    return true;
}

long long largestPrimeFactor(long long number) {
    if (number == 0 || number == 1) {
        return 0;
    }
    if (isPrime(number)) {
        return number;
    }
    long long primeFactors[1024];
    long index = 0;
    for (int i = 2; i <= sqrt(number); i++) {
        if (number % i != 0) {
            continue;
        }
        if (isPrime(i)) {
            primeFactors[index] = i;
            index++;
        }
        if (isPrime(number / i)) {
            primeFactors[index] = number / i;
            index++;
        }
    }
    long long largest = -1;
    for (int i = 0; i < index; i++) {
        if (primeFactors[i] > largest) {
            largest = primeFactors[i];
        }
    }
    return largest;
}

int main(void) {
    long long lpm = largestPrimeFactor(big_int);
    printf("%lld\n", lpm);
    return 0;
}
