#=

A palindromic number reads the same both ways. The largest palindrome made from the 
product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=#

function ispalindrome(x)
    asstring = string(x)
    asstring == reverse(asstring)
end

largestpalindrome = 0 

for i = 100:999
    for j = i:999
        product = i * j
        if ispalindrome(product) && product > largestpalindrome
            global largestpalindrome = product
            println("$i * $j = $product")
        end
    end
end

println("Largest Palindrome made from the product of two three digit numbers is
        $largestpalindrome")
