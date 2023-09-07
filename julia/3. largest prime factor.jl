# Largest prime factor
# https://projecteuler.net/problem=3

target = 600851475143

"This function uses the algorithm of the 'sieve of Erastothenes'"
function sieve(num)
    √ = floor(Int, sqrt(num))
    sieve = fill(true, num)  # The sieve requires all values initially set to true
    sieve[1] = false         # Except one, which is not a prime
    for i = 2:√
        if !sieve[i]
            continue
        end
        for j = 2:num
            if i * j <= num
                sieve[i*j] = false
            end
        end
    end

    primes = []
    for i = 1:num
        if sieve[i]
            push!(primes, i)
        end
    end
    return primes
end

function factors(num)
    fa = []
    for i = 1:num
        if num % i == 0
            push!(fa, i)
        end
    end
    return fa
end

function largestPrimeFactor(number)
    primeFactors = []
    for i in sieve(number)
        for j in factors(number)
            if i == j
                push!(primeFactors, i)
            end
        end
    end
    return primeFactors[end]
end

println(largestPrimeFactor(6969))
