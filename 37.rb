require 'euler.rb'
=begin
The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits 
from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to 
left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.
NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

=end

gotPrimes = Array.new
notPrimes = Array.new


1.upto(10000000) do |d|
  if(d%50000 == 0)
    puts "#{d} @ #{Time.now}"
  end
  
  if (!d.isPrime?)
    notPrimes.push(d)
    next
  end
  gotPrimes.push(d)
  
  allPrime = true
  
  cLeft   = d.to_s.split('')
  cRight  = d.to_s.split('')
 
  #puts "Working: #{d}"
 
  # Start splitting off characters left and then right
  while(cLeft.shift) do
    n = cLeft.join.to_i
    next if (n == 0)
    # Have we seen this number before?
    if(gotPrimes.include?(n))
      next
    elsif(notPrimes.include?(n))
      allPrime = false
      break
    end
  end
  
  # Break early if we're already false
  if (allPrime == false)
    next
  end
  
  while(cRight.pop) do
    n = cRight.join.to_i
    next if (n == 0)  
    # Have we seen this number before?
    if(gotPrimes.include?(n))
      next
    elsif(notPrimes.include?(n))
      allPrime = false
      break
    end    
  end
  
  if(allPrime)
    puts "\tGot: #{d}"
  end

end
