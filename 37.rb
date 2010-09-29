require 'euler.rb'
=begin
The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits 
from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to 
left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.
NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
=end

$allPrime = true

def setAllPrime(status)
  # If it's already false, leave it false
  if $allPrime == true
    $allPrime = status
  end
end

11.upto(1000000) do |d|
  if (!d.isPrime?)
    next
  end
  
  #puts "#{d} = #{d.isPrime?}"
  
  $allPrime = true
  
  a = d.to_s.split('')
  while(a.pop) do
    r = a.join.to_i
    next if (r==0)
    #puts "\t#{r} = #{r.isPrime?}"
    setAllPrime(r.isPrime?)
  end
  a = d.to_s.split('')
  while(a.shift) do
    r = a.join.to_i
    next if (r==0)
    #puts "\t#{r} = #{r.isPrime?}"
    setAllPrime(r.isPrime?)
  end
  
  if ($allPrime)
    puts "Got: #{d}"
  end  

end
