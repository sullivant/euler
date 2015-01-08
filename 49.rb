#The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases 
#by 3330, is unusual in two ways: (i) each of the three terms are prime, and, 
#(ii) each of the 4-digit numbers are permutations of one another.
#
#There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, 
#exhibiting this property, but there is one other 4-digit increasing sequence.
#
#What 12-digit number do you form by concatenating the three terms in this 
#sequence?

require_relative('euler')
include Math
require 'prime'

1001.upto(9999).each do |s|
next unless s.isPrime?
#puts "**CHECKING: #{s}**"
primes = []

# needs to be non-distinct
s.digits.permutation.each do |p|
  n = p.join().to_i
  primes << n if n.isPrime?
end

primes.uniq.sort!.each_with_index do |p,i|
  diffFirst = p-primes[0]
  # If our diff from first is also in this array, check for another one.
  hit = primes.include?(p+diffFirst)
  if (hit && diffFirst > 0)
    f = p+diffFirst
    #puts "p:#{p} dFirst:#{diffFirst} inc:#{hit} (#{f})"
    puts "\tTRY: #{s}+#{p}+#{f} (diffs: #{diffFirst})"
  end
end

end
