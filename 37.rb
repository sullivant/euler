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

puts 2.isPrime?
puts 23.isPrime?

1.upto(800000) do |d|
  if(d%50000 == 0)
    #puts "#{d} @ #{Time.now}"
  end
  if (!d.isPrime?)
    next
  end
  
  cLeft   = d.to_s.split('')
  cRight  = d.to_s.split('')
 
  allPrime = true
 
  # Start splitting off characters left and then right
  while(cLeft.shift) do
    n = cLeft.join.to_i
    next if (n == 0)
    if(gotPrimes.include?(n))
      next
    elsif(notPrimes.include?(n))
      allPrime = false
      break
    end
    if (!n.isPrime?)
      allPrime = false
      notPrimes.push(n)
      break
    else
      gotPrimes.push(n)
    end    
  end
   
  if (!allPrime)
    next
  end
  
  while(cRight.pop) do
    n = cRight.join.to_i
    next if (n == 0)  
    if(gotPrimes.include?(n))
      next
    elsif(notPrimes.include?(n))
      allPrime = false
      break
    end
    if (!n.isPrime?)
      allPrime = false
      notPrimes.push(n)
      break
    else
      gotPrimes.push(n)
    end    
  end
  
  if(allPrime)
    puts "\tGot: #{d}"
    break if(d > 739397)
  end
  

end
