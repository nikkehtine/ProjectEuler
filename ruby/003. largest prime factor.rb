# Largest prime factor
# https://projecteuler.net/problem=3

target = 600851475143
target_s = 13195

def isPrime(n)
    if n == 2
        return true
    end

    if n < 2 || n % 2 == 0
        return false
    end

    for i in 3..(Math.sqrt(n)).to_i
        if i % 2 == 0
            next
        end
        if n % i == 0
            return false
        end
    end
    return true
end

def largestPrimeFactor(n)
    if n < 2
        return nil
    end
    if isPrime(n)
        return n
    end

    (Math.sqrt(n)).to_i.downto(1) do |i|
        if n % i != 0
            next
        end
        if isPrime(i)
            return i
        end
    end
    return nil
end

puts(largestPrimeFactor(target))            
