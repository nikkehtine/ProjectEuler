// Largest prime factor
// https://projecteuler.net/problem=3

bigNum = 600851475143;

function isPrime(n) {
    if (n % 2 == 0 || n == 0 || n == 1) {
        return false;
    }
    for (let i = 3; i <= Math.sqrt(n); i += 2) {
        if (n % i == 0) {
            return false;
        }
    }
    return true;
}

function largestPrimeFactor(number) {
    if (number == 0 || number == 1) {
        return "n/a";
    }
    const primes = [2];
    for (let i = 3; i <= number; i++) {
        if (isPrime(i)) {
            primes.push(i);
        }
    }
    const facs = [];
    for (let i = 0; i < primes.length; i++) {
        if (number % primes[i] == 0) {
            facs.push(primes[i]);
        }
    }
    const end = facs.length - 1;
    return facs[end];
}

console.log(largestPrimeFactor(bigNum));
