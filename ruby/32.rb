require_relative 'euler.rb'

#The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, 
#multiplier, and product is 1 through 9 pandigital.
#
#Find the sum of all products whose multiplicand/multiplier/product identity can 
#be written as a 1 through 9 pandigital.

foundPans = []
a = [1,2,3,4,5,6,7,8,9]

(1..9999).each do |n|
	n.divisors.combination(2){|p|
		next unless p[0] * p[1] == n
		p << n
		if (p.join.digits.sort == a)
			puts "Got: #{p.join("!")}"
			foundPans << n
		end
	}
end

puts foundPans.uniq.sum

