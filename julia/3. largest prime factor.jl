# Largest prime factor
# https://projecteuler.net/problem=3

target = 600851475143

# This solution is so painfully slow that I don't even know if it works
# or what the output is.

function isPrime(num)
    if num == 0 || num == 1
        return false
    end
    for i = 2:sqrt(num)
        if num % i == 0
            return false
        end
    end
    return true
end

function largestPrimeFactor(num)::Int
    for i in reverse(sqrt(num):num)
        if num % i == 0 && isPrime(i)
            return i
        end
    end
    return 0
end

println(largestPrimeFactor(target))
