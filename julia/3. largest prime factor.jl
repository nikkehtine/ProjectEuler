# Largest prime factor
# https://projecteuler.net/problem=3

target = 600851475143
primes = [2]

"This function uses the algorithm of the 'sieve of Erastothenes'"
function sieve(num)
    √ = floor(Int, sqrt(num))
    sieve = fill(true, num)  # The sieve requires all values initially set to true
    sieve[1] = false         # Except one, which is not a prime

    for i = 2:√
        if sieve[i]
            for j = 2:num
                if i * j <= num
                    sieve[i*j] = false
                end
            end
        end
    end

    return sieve
end

println(sieve(10))

function largestPrimeFactor(number) end

println(largestPrimeFactor(target))
