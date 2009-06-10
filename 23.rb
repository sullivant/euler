require 'euler.rb'

#Things we know:
# 1 - The first few sums of abundant numbers  (List A)[24,30,32,36,38,40,42,44,48]
# 2 - All even numbers >= 48 are the sum of abundant numbers
# 3 - An odd num that's the sum of 2 abundants must be the sum of an even and an odd abundant. (odd = even + odd)
# 3.a  - Gather list of even abundant numbers <= range
# 3.b - Gather list of odd abundant numbers <= range
# 3.c - For each odd abundant number, sum against all even abundant numbers and the sum belongs in List A
# 4 - All integers > 28123 can be written as the sum of 2 abundant numbers

capNum = ARGV[0].to_i

abundants = Array.new()
sumOfAbundants = Array.new()

allNums = Array.new(capNum+1){|i| i}

1.upto(capNum) do |n|
  if n.abundant? 
    abundants << n
  end
end

abundants = abundants.reverse

while a = abundants.pop do
  sumOfAbundants << a + a
  
  abundants.each do |b|
    sumOfAbundants << a + b
  end
end

puts "sum of left: #{(allNums-sumOfAbundants.uniq.sort).sum}"