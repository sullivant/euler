require 'euler.rb'
=begin
Triangle, pentagonal, and hexagonal numbers are generated by the following formulae:

Triangle	 	Tn=n(n+1)/2	 	1, 3, 6, 10, 15, ...
Pentagonal	 	Pn=n(3n1)/2	 	1, 5, 12, 22, 35, ...
Hexagonal	 	Hn=n(2n1)	 	1, 6, 15, 28, 45, ...
It can be verified that T285 = P165 = H143 = 40755.

Find the next triangle number that is also pentagonal and hexagonal.

P(s,n) = (s/2-1)n^2-(s/2-2)n

=end

def getTri(n)
  return n*(n+1)/2
end
def getPen(n)
  return n*(3*n-1)/2
end
def getHex(n)
  return n*(2*n-1)
end

=begin
tri = Array.new()
pen = Array.new()
hex = Array.new()

#286.upto(99999) do |n|
#  tri.push(getTri(n))
#end
166.upto(99999) do |n|
  pen.push(getPen(n))
end
144.upto(99999) do |n|
  hex.push(getHex(n))
end

pen.each do |x|
  if hex.include?(x)
    puts "Got: #{x}"
    break
  end
end
=end

1.upto(1533776805) do |n|
  if n.isTriangle? && n.isPentagonal? && n.isHexagonal? 
    puts "Got #{n}"
  end
end
