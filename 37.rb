require 'euler.rb'
=begin
The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits 
from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to 
left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.
NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

TODO: Add in checks to see if we've done this number (n) before.  (eg: with 3797 - at 379, we know that's prime already.)
=end

$allPrime = true
gotPrimes = Array.new
gotBad = Array.new

def setAllPrime(status)
  # If it's already false, leave it false
  if $allPrime == true
    $allPrime = status
  end
end


11.upto(10000000) do |d|
  if (!d.isPrime?)
    next
  end
  
  $allPrime = true
  
  a = d.to_s.split('')
  while(a.pop) do
    r = a.join.to_i
    next if (r==0)
    next if (gotPrimes.include?(r))
    if(gotBad.include?(r))
      setAllPrime(false)
      break
    end    
    if(r.isPrime?)
      gotPrimes.push(r)
      setAllPrime(true)
    else
      gotBad.push(r)
      setAllPrime(false)
      break
    end
  end
  
  next if($allPrime == false)
  
  a = d.to_s.split('')
  while(a.shift) do
    r = a.join.to_i
    next if (r==0)
    next if (gotPrimes.include?(r))
    if(gotBad.include?(r))
      setAllPrime(false)
      break
    end
    if(r.isPrime?)
      gotPrimes.push(r)
      setAllPrime(true)
    else 
      gotBad.push(r)
      setAllPrime(false)
      break
    end
  end
  
  if ($allPrime)
    puts "Got: #{d}"
  end  

end
