// Largest prime factor
// https://projecteuler.net/problem=3

function isPrime(n) {
    if ((n % 2 == 0 && n != 2) || n == 0 || n == 1) {
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
    if (number == 0 || number == 1 || number != Math.floor(number)) {
        return "n/a";
    }
    if (isPrime(number)) {
        return number;
    }
    const primeFactors = [];
    for (let i = 2; i <= Math.sqrt(number); i++) {
        if (number % i != 0) {
            continue;
        }
        if (isPrime(i)) {
            primeFactors.push(i);
        }
        if (isPrime(number / i)) {
            primeFactors.push(number / i);
        }
    }
    primeFactors.sort((a, b) => a - b);
    return primeFactors.at(-1);
}

console.log(largestPrimeFactor(600851475143));
