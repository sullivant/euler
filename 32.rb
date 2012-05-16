require 'euler.rb'

#The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, 
#multiplier, and product is 1 through 9 pandigital.
#
#Find the sum of all products whose multiplicand/multiplier/product identity can 
#be written as a 1 through 9 pandigital.

sw = 9 # 1-9 = 8
foundPan = []

(1..98765432).to_a.each do |n|
  puts "working: #{n}" if n%100 == 0
  next if (n.digits.uniq.size != n.digits.size)
  
  goodDivs = []
  n.divisors.each do |d|
    dPair = n/d
    
    next unless (d.digits+dPair.digits+n.digits).uniq.size == 9 
    next unless (d.digits.sum+dPair.digits.sum+n.digits.sum == ((1..sw).to_a).sum)
    
    next if goodDivs.include?(d)
    goodDivs << d
    goodDivs << dPair
  end
  next unless goodDivs.size == 2
  foundPan << n
  puts "\t#{n}\n"
end

puts "found: #{foundPan.uniq.size} with sum #{foundPan.uniq.reduce(:+)}"
