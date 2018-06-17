#=

Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four 
million, find the sum of the even-valued terms.

=#


function sumevenfibs(ul)
    total = 0
    current = 2
    previous = 1
    while current <= ul
        total += current
        current, previous= nextevenfib(current, previous)
    end
    return total
end

function nextevenfib(current, previous)
    current, previous = current + previous, current
    current, previous = current + previous, current
    current, previous = current + previous, current
    return current, previous
end

println(sumevenfibs(100))
