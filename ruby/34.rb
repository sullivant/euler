require 'euler.rb'

curious = Array.new()

3.upto(1000000) do |n|
  sumDigFactors = (n.to_s.split(//).collect{|d| d.to_i.factorial}).sum
  curious << n if n == sumDigFactors
end

puts curious.join("|")