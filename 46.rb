#What is the smallest odd composite that cannot be written as the sum of a 
#prime and twice a square?

#9 = 7 + 2×1^2
#15 = 7 + 2×2^2
#15 = 13 + 2x1^2
#21 = 3 + 2×3^2
#25 = 7 + 2×3^2
#27 = 19 + 2×2^2
#33 = 31 + 2×1^2

require_relative('euler')
include Math
require 'prime'

# Generate a list of primes.
# Get all primes lower than n.
# Find diff between that prime p and n.
# If diff is twice a square, then it fits.
# First that does not fit is the number.

def isTwiceSquare(nbr)
  return (Math.sqrt((nbr/2)) % 1 == 0) ? true : false
end

primeList = Prime.take(10000)
notFound  = true
result    = 19

while(notFound)
  result = result + 2
  next if result.isPrime?
  # Get primes less than result
  # For each of them, see if the difference is twice a square
  # If any are a fit, then notFound is back to true
  notFound = false
  primeList.select{|v| v<result}.each do |p|
    diff = result - p
    #puts "Trying: #{result} = #{p}+#{diff}"
    if (isTwiceSquare(diff))
      notFound = true
      break # Don't need to keep testing others if we've found one
    end
  end
end

puts result