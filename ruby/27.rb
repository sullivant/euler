require 'euler.rb'

#Euler published the remarkable quadratic formula:
#n² + n + 41
#
#It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. 
#However, when n = 40, 40^(2) + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, 
#and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.
#
#Using computers, the incredible formula  n² - 79n + 1601 was discovered, 
#which produces 80 primes for the consecutive values n = 0 to 79. 
#The product of the coefficients, -79 and 1601, is -126479.
#
#Considering quadratics of the form:
#
#   n² + an + b, where |a| < 1000 and |b| < 1000
#
#   where |n| is the modulus/absolute value of n
#    e.g. |11| = 11 and |-4| = 4

#Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes 
#for consecutive values of n, starting with n = 0.

# At first glance =from a @ -1000 to a @ 1000 and from the same in b.


def getConsecPrimeCount(a,b)
  n = 0
  while(((n*n)+(a*n)+b).isPrime?)
    n += 1
  end
  return n
end

aDom = bDom = 1000
consecutives = Hash.new()

(aDom*-1).upto(aDom) do |a|
  (bDom*-1).upto(bDom) do |b|
    c = getConsecPrimeCount(a,b)
    consecutives["#{a}_#{b}"] = c
  end
end

maxConsec = consecutives.sort{|a,b| -1*(a[1]<=>b[1])}.first
puts "#{maxConsec[0]} gets #{maxConsec[1]}"

