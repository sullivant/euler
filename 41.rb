#We shall say that an n-digit number is pandigital if it makes use of all the 
#digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is 
#also prime.
#
#What is the largest n-digit pandigital prime that exists?

require_relative('euler')

top = 7654321
lastDigLen = 0
x = 0
top.step(1,-2).each do |n|
	x += 1
	if(x % 10000 == 0 )
		puts "\t#{n}"
	end		
	
	nd = n.digits
	if(nd.length != lastDigLen)
		lastDigLen = nd.length
		puts "Working length: #{lastDigLen}"
	end
	next if nd.include?(0)
	next unless n.isPandigital?	
	next unless n.isPrime?
	puts "Found: #{n}"
	break
end

