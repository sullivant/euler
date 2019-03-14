# By replacing the 1st digit of the 2-digit number *3, it turns out that six of
# the nine possible values: 13, 23, 43, 53, 73, and 83, are all prime.

# By replacing the 3rd and 4th digits of 56**3 with the same digit, this 5-digit
# number is the first example having seven primes among the ten generated
# numbers, yielding the family: 56003, 56113, 56333, 56443, 56663, 56773,
# and 56993. Consequently 56003, being the first member of this family, is the
# smallest prime with this property.

# Find the smallest prime which, by replacing part of the number (not
# necessarily adjacent digits) with the same digit, is part of an eight prime
# value family.

require_relative('euler')
include Math
require 'prime'

primeList = []
families = []

def getFamily(n)
    # First two and last digit and digits replaced
    return n[0..1] << n[-1,1]
end

50000.upto 59999 do |n|
    next unless n.isPrime?
    primeList << n
end

# Find numbers with two 1's that aren't in the first or last position
primeList.each do |p|
    n = 6
    next unless p.to_s.scan(/(?<!^)#{n}(?!$)/).count > 1
    puts "p: #{p}" 

    positions = p.to_s.enum_for(:scan,/(?<!^)#{n}(?!$)/).map {
        Regexp.last_match.begin(0)
    }
    puts positions.join("|")
end

