require 'euler.rb'
=begin
An irrational decimal fraction is created by concatenating the positive integers:

0.123456789101112131415161718192021...

It can be seen that the 12th digit of the fractional part is 1.

If dn represents the nth digit of the fractional part, find the value of the following expression.

d1*d10*d100*d1000*d10000*d100000*d1000000

=end

=begin

a = Array.new()
a << 0
1.upto(1000000) do |n|
  n.to_s.split(//).each do |y|
    a<<y
  end
end

puts a[1]
puts a[100]
puts a[1000]
puts a[10000]
puts a[100000]
puts a[1000000]

puts 1*5*3*7*2*1
=end

def digit(n)
  i = 1
  p = 0
  s = ""
  loop do
    s = i.to_s
    p += s.length
    break if p >= n
    i += 1
  end
  s[s.length-1 - p + n, 1].to_i
end

puts digit(1) * digit(10) * digit(100) * digit(1000)  * digit(10000) * digit(100000) * digit(1000000)
