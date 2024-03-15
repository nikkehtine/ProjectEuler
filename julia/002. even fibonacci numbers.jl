# Even Fibonacci numbers
# https://projecteuler.net/problem=2

seq = [0, 1]
even_nums = []
while true
    next_num = seq[end] + seq[end-1]
    if next_num > 4000000
        break
    end
    push!(seq, next_num)
    if next_num % 2 == 0
        push!(even_nums, next_num)
    end
end

println(sum(even_nums))
