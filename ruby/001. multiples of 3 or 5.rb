# Multiples of 3 or 5
# https://projecteuler.net/problem=1

target = 1000

sum = 0

for i in 1...target
    if i % 3 == 0 || i % 5 == 0
        sum += i
    end
end

puts(sum)
