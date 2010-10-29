require 'euler.rb'
=begin
An irrational decimal fraction is created by concatenating the positive integers:

0.123456789101112131415161718192021...

It can be seen that the 12th digit of the fractional part is 1.

If dn represents the nth digit of the fractional part, find the value of the following expression.

d1*d10*d100*d1000*d10000*d100000*d1000000

=end

tot = 1
dig = 1
sta = 1
fin = 10000000
sta.upto(fin) do |n|
  n.to_s.split(//).each do |x|
    #puts "dig #{dig}: \t#{x}"
    if dig == 10 || dig == 100 || dig == 1000 || dig == 10000 || dig == 100000 || dig == 1000000
      tot = tot * x.to_i
    end
    sta += 1
    dig += 1
  end
end

puts tot
