require 'euler.rb'
=begin
It can be seen that the number, 125874, and its double, 251748, contain 
exactly the same digits, but in a different order.

Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.
=end

1.upto(1000000) do |n|
  a = (n*2).to_s.split('')
  b = (n*3).to_s.split('')
  c = (n*4).to_s.split('')
  d = (n*5).to_s.split('')
  e = (n*6).to_s.split('')

  if (
    (a.size == b.size) and 
    (b.size == c.size) and
    (c.size == d.size) and
    (d.size == e.size) and
    (a.size == (a&b&c&d&e).size) )
    puts "Got: #{n}"
  end
end
