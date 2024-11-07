#include <math.h>
#include <stdbool.h>

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
