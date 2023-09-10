# Largest prime factor
# https://projecteuler.net/problem=3

function is_prime(n)
    if n != 2 && n % 2 == 0 || n == 0 || n == 1
        return false
    end
    for i in 3:2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

function largest_prime_factor(number)
    if number == 0 || number == 1
        return "n/a"
    end
    if is_prime(number)
        return number
    end
    prime_factors = []
    for i in 2:floor(sqrt(number))
        if number % i != 0
            continue
        end
        if is_prime(i)
            push!(prime_factors, floor(Int, i))
        end
        if is_prime(number / i)
            push!(prime_factors, floor(Int, number / i))
        end
    end
    return maximum(prime_factors)
end

println(largest_prime_factor(600851475143))
