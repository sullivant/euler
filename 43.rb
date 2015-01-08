#The number, 1406357289, is a 0 to 9 pandigital number because it is made up 
#of each of the digits 0 to 9 in some order, but it also has a rather 
#interesting sub-string divisibility property.
#
#Let d1 be the 1st digit, d2 be the 2nd digit, and so on. 
#In this way, we note the following:
#
# d2d3d4  = 406 is divisible by 2
# d3d4d5  = 063 is divisible by 3
# d4d5d6  = 635 is divisible by 5
# d5d6d7  = 357 is divisible by 7
# d6d7d8  = 572 is divisible by 11
# d7d8d9  = 728 is divisible by 13
# d8d9d10 = 289 is divisible by 17
# 
#Find the sum of all 0 to 9 pandigital numbers with this property.

#Pattern seems to be: XXX[even]X[5|0]XXXX to start

require_relative('euler')

# Build arrays
sevens = []
(105..994).each do |e|
	next unless e.digits[1] == 0 || e.digits[1] == 5
	sevens << e if (e % 7 == 0 && e.digits.uniq.length == 3)
end
elevens = [] # < 100 excluded; not pandigital
(500..599).each do |e|
	elevens << e if (e % 11 == 0 && e.digits.uniq.length == 3)
end
thirteens = []
(104..988).each do |e|
	next unless (e % 13 == 0) # Check for div by 13
	# Check to see if first two are in last two of all possible elevens
	f = e.digits[0..1].join("")
	elevens.each do |v|
		thirteens << e if v.digits[1..2].join("") == f && e.digits.uniq.length == 3
	end
end
seventeens = []
(289..986).each do |e|
	next unless e % 17 == 0
	# Check to see if first two are in last two of all possible thirteens
	f = e.digits[0..1].join("")
	thirteens.each do |v|
		seventeens << e if v.digits[1..2].join("") == f && e.digits.uniq.length == 3
	end
end

#1406357289
#puts "-7-"
#puts sevens
#puts "-11-"
#puts elevens
#puts "-13-"
#puts thirteens
#puts "-17-"
#puts seventeens

foundNumbers 	= []
types 			= [357289,952867]

types.each do |t|
	(1046..4310).each do |n|
		n = "#{n}#{t}".to_i
		next unless n.isPandigital?
		nD = n.digits
		next unless nD[3]%2 == 0						# 2
		next unless (nD[2]+nD[3]+nD[4]) % 3 == 0		# 3
		next unless nD[5]%5 == 0						# 5		
		next unless nD[4..6].join("").to_i % 7 == 0 	# 7
		next unless nD[5..7].join("").to_i % 11 == 0 	# 11
		next unless nD[6..8].join("").to_i % 13 == 0	# 13
		next unless nD[7..9].join("").to_i % 17 == 0	# 17		
		foundNumbers << n
	end		
end
puts foundNumbers
puts "Sum:#{foundNumbers.sum}"
