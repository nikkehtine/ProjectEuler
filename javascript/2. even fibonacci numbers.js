// Even Fibonacci numbers
// https://projecteuler.net/problem=2

function fiboEvenSum(n) {
    let a, b, next, sum;
    a = b = 1;
    next = sum = 0;

    while (true) {
        next = a + b;
        if (next > n) {
            break;
        }
        if (next % 2 == 0) {
            sum += next;
        }
        a = b;
        b = next;
    }

    return sum;
}

console.log(fiboEvenSum(4000000));
