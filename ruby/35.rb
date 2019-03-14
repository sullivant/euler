require 'euler.rb'

circularPrimes = Array.new()
circularPrimes += [2, 3, 5, 7, 11]
puts Time.now()
11.upto(ARGV[0].to_i) do |n|
  s = n.to_s
  next if s.match(/[024568]/)
  next if circularPrimes.include?(n)
  
  a = s.split(//)
  r = [n]
  1.upto(a.size-1) do |i|
    a << a.shift
    r << a.join.to_i
  end
  
  if r.isPrime?
    circularPrimes += r
  end
end
puts Time.now()
puts circularPrimes.uniq.size

