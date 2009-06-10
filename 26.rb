require 'euler.rb'

lengths = Hash.new
1.upto(1000) do |n|
  next unless n.isPrime?
  l = n.periodLength  
  lengths[n] = l
end
s = lengths.sort {|a,b| a[1] <=> b[1]}
puts "#{s.last[0]} has length of: #{s.last[1]}"
