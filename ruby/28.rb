require 'euler.rb'

lastCorner  = 1
corners     = [1]
size        = ARGV[0].to_i

2.upto(size) do |row|
  distance = (2*row)-2
  puts "row:\t#{row}\tdistance\t#{distance}"
  4.times do |c|
    lastCorner += distance
    corners << lastCorner
  end
end

puts lastCorner
puts corners.sum