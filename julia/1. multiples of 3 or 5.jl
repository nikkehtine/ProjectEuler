# Multiples of 3 or 5
# https://projecteuler.net/problem=1

multiples = []

for i in 1:999
    if i % 3 == 0 || i % 5 == 0
        push!(multiples, i)
    end
end

println(sum(multiples))
