# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

require 'euler.rb'

pow = 5
nums = Array.new()
n = 1
1.upto(999999) do |n|
  #puts "\t#{n}" if n % 10000 == 0
  s = n.digits.collect{|d| d.to_i**pow}.sum
  nums << n if n == s
  n += 1
end

nums = nums - [1]
puts nums.sum
