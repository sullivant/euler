# The prime 41, can be written as the sum of six consecutive primes:
# 41 = 2 + 3 + 5 + 7 + 11 + 13
#
# This is the longest sum of consecutive primes that adds to a prime below 
# one-hundred.  The longest sum of consecutive primes below one-thousand that 
# adds to a prime, contains 21 terms, and is equal to 953. 
#
# Which prime, below one-million, can be written as the sum of the most 
# consecutive primes?

require_relative('euler')
include Math
require 'prime'

p = Prime.first 1000
limit = 1000000
res = []
50.upto(limit) do |s|
  p.choose_recs(s).each do |r|
    sum = r.sum
    next if sum > limit
    next unless sum.isPrime?
    res << ["#{s} : #{sum}"]
  end
end

res.each do |l|
  puts l
end