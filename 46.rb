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

# Get all primes lower than n
# Find diff between that prime p and n
# If diff is a square number, it fits
# If diff is not a square number, try next lower prime
# IF ALL EXHAUSTED THEN n FITS THE PROBLEM QUESTION

foundPrimes   = []
fitComposites = []
gotOne        = false # Tested to see if we got at least one solution


180000.upto(1800000) do |n|
  next if n%2 == 0  # Skip evens
  if n.isPrime?     # Save this prime for later
    foundPrimes << n
  else              # This is a composite.
    foundPrimes.each do |f|
      r = (n-f)   # Remainder (ex: 15-7 = 8)
      m = r/2     # Multiple (8/2 = 4)
      if(Math.sqrt(m) % 1 == 0)  # Is m a square?
        gotOne = true
        puts "Composite:\t#{n} = #{f} + 2x#{Math.sqrt(m).to_i}^2"#
        break
      end
    end
    if !gotOne
      puts "\n\nComposite:#{n} is NOT A FIT"
      break
    end
  end
end

