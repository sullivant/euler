#The first two consecutive numbers to have two distinct prime factors are:
#
#14 = 2 × 7
#15 = 3 × 5
#
#The first three consecutive numbers to have three distinct prime factors are:
#
#644 = 2² × 7 × 23
#645 = 3 × 5 × 43
#646 = 2 × 17 × 19.
#
#Find the first four consecutive integers to have four distinct prime factors. 
#What is the first of these numbers?

require_relative('euler')

#Smallest number to have 4 distinct prime factors
#210 = 2 x 3 x 5 x 7

s = 4 # Number of distinct primes we are looking for; also number consecutive
txtFound = "Nothing"


def isFit(n, s, nFactor)
  pf = (n+nFactor).primeFactors
  if( pf.uniq.size == s )
    puts "#{(n+nFactor)}\t#{pf.uniq.join(":")}"
    return true
  end
  return false
end

n = 1000
nMax = 150000

while n < nMax
  0.upto( (s-1) ) do |try|
    if isFit(n,s,try)
      if try == (s-1) # We are done here
        txtFound = "#{n}"
        n = nMax
        next
      end
      next
    else
      n += (try+1)
      break
    end
  end
end

puts "\nFound #{txtFound}"