#Take the number 192 and multiply it by each of 1, 2, and 3:
#
#192 × 1 = 192
#192 × 2 = 384
#192 × 3 = 576
#By concatenating each product we get the 1 to 9 pandigital, 192384576. We will 
#call 192384576 the concatenated product of 192 and (1,2,3)
#
#The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 
#5, giving the pandigital, 918273645, which is the concatenated product of 9 
#and (1,2,3,4,5).
#
#What is the largest 1 to 9 pandigital 9-digit number that can be formed as the 
#concatenated product of an integer with (1,2, ... , n) where n > 1?

require_relative 'euler'

# Needs to start with 9.  Then the fixed portion needs to be multiplied by 1,2..
#
# Fixed of various digit lengths:
# 98x1 = 98 98x2 = 196 98x3 = 294 98x4 = 392 (11 digits now after concat) WRONG
# 987x1 = 987 987x2 = 1974 987x3 = 3961 (11 digits after concat) WRONG
# 9876x1 = 9876 9876x2 = 19752 = (9 digits after concat) CORRECT
#
# Fixed then "starts" at 9876 and we can count down, multiplying each by 2,
# concatenating, and then seeing if pandigital.  9123 has to be stopping point
# in the pairs also.

(9876).downto(9123).each do |i|
	result = [i,2*i].join().to_i
	puts result if result.isPandigital?
end

