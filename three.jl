#=

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

=#


function primefactorization(number)
    primes = []
    factorization = []
    reduced = number
    limit = sqrt(reduced)
    index = 2
    # See if index is prime
    while index <= limit
        if !any(index .%primes .==0)
            append!(primes, index)
            #= println("most recent prime: ", last(primes)) =#
            factor, power, result = reducebyfactor(reduced, index)
            # If this prime is a factor, factor out to highest power
            if power > 0
                append!(factorization, [(factor, power)])
                reduced = result
                limit = sqrt(result)
            end
        end
        index += 1
    end
    if reduced != 1
        append!(factorization, [(reduced, 1)])
    end
    return factorization
end

function reducebyfactor(number, factor)
    power = 0
    result = number
    while result % factor == 0
        power +=1
        result = div(result, factor)
    end
    return factor, power, result
end

function largestprimefactor(factorization)
    return last(factorization)[1]
end
function largestprimefactor(::Number)
end

#= println(reducebyfactor(9, 3)) =#
#= println(reducebyfactor(9,4)) =#
#= println(reducebyfactor(60,2)) =#
# Tests
#= println(primefactorization(1)) =#
#= println(primefactorization(2)) =#
#= println("2 should be 2: ", largestprimefactor(primefactorization(2))) =#
#= println("3 should be 3: ", largestprimefactor(primefactorization(3))) =#
#= println("4 should be 2: ", largestprimefactor(primefactorization(4))) =#
#= println("5 should be 5: ", largestprimefactor(primefactorization(5))) =#
#= println("6 should be 3: ", largestprimefactor(primefactorization(6))) =#
#= println("7 should be 7: ", largestprimefactor(primefactorization(7))) =#
#= println("8 should be 2: ", largestprimefactor(primefactorization(8))) =#
#= println("9 should be 3: ", largestprimefactor(primefactorization(9))) =#
#= println("10 should be 5: ", largestprimefactor(primefactorization(10))) =#
#= println("15 should be 5: ", largestprimefactor(primefactorization(15))) =#
#= println("27 should be 3: ", largestprimefactor(primefactorization(27))) =#
#= println("24 should be 3: ", largestprimefactor(primefactorization(24))) =#
#= println("54 should be 3: ", largestprimefactor(primefactorization(54))) =#
#= println("60 should be 5: ", largestprimefactor(primefactorization(60))) =#
#= println("120 should be 5: ", largestprimefactor(primefactorization(120))) =#
#= println("13195 should be 29: ", largestprimefactor(primefactorization(13195))) =#

function factorizationandlargestprimefactor(number)
    factorization = primefactorization(number)
    largestprime = largestprimefactor(factorization)
    println("The prime factorization of ", number, " is: ", factorization)
    println("The largest prime factor of ", number, " is: ", largestprime)
end

factorizationandlargestprimefactor(600851475143)





