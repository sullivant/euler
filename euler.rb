#A series of class additions utilized in common Project Euler solutions.
class Euler

end 

class Array
  def max_index(n)
    index = 0
    if self.last > n
      while (self[index] < n)
        index += 1
      end
      return index-1 if self[index] > n
      return index if self[index] = n
    else return self.length - 1
    end
  end
  def sum # returns the sum of all array members
    return self.reduce(:+)
  end
  def product # returns the product of all array members
    inject(1) do |result, i|
      result * i
    end
  end
  def permutations # returns an array of the permutations of the array; recursive.
    return [self] if size < 2
    perm = []
    each {|e| (self - [e]).permutations.each {|p| perm << ([e] + p) } }
    perm
  end
  def isPrime? # returns true if all elements of array, as Integers, are prime
    p = true
    self.each do |n|
      p = false if !n.to_i.isPrime?
    end
    return p
  end
end

class Integer
  def divisors
      divisors = [1]
      2.upto(Math.sqrt(self).floor) do |i|
        if self % i == 0
          divisors << i
        end
      end
      divisors.reverse.each do |i|
        divisors << self / i
      end
      divisors.uniq
  end
  def propDivisors
    d = self.divisors
    d.delete(self)
    return d
  end
  def abundant?
    self.divisors.sum-self > self ? true : false
  end
  def deficient?
    self.divisors.sum-self < self ? true : false
  end
  def perfect?
    self.divisors.sum-self == self ? true : false
  end
  def sumFrom_1
    self * (self + 1) / 2
  end
  def isPrime?
    return false if self <= 1  # To be simple.  Really, we could do abs to |self| and test that for primality.
    return true if self == 2
    (2..(Math.sqrt(self).ceil)).each do |n|
      if (self % n == 0)
        return false
      end
    end
    return true
  end
  def digits
    a = []
    self.to_s.split(//).each do |i|
      a << i.to_i
    end
    return a
  end 
  def totient # The count of numbers 1 upto n that are coprime to n
    x = self
    return self.primeFactors.uniq.collect {|n| x *= (1-1/n.to_f)}.last.to_i
  end  
  def mygcd(a,b)
    return a if b == 0
    return gcd(b, a % b)
  end
  def primeFactors
    n = self
    factors = []
    d = 2
    while (n > 1)
      while (n % d == 0)
        factors << d
        n /= d
      end
      d += 1
    end
    return factors
  end
  def gpf
    return self.primeFactors.sort[-1]
  end 
  def periodLength # Returns period length of the decimal expansion of 1/n
    if (self % 5 == 0 || self % 2 == 0)
      return 0
    end
    
    k = 1
    while (k > 0)
      break if ((10**k)-1) % self == 0
      k += 1
    end
    return k
  end
  def isTriangle?
    # A number n is triangle if 8n+1 is a square of something.
    # Can't just do .is_a?(Integer) because of 9.0 being a valid value, however the remainder means it's a float.
    # Lets do 9.0 % 1 and test for zero instead.
    return Math.sqrt(8*self+1) % 1 == 0 ? true : false
  end
  def isPentagonal?
    # If n is natural, then self is pentagonal
    # n = sqrt(24x+1)+1/6
    return (Math.sqrt(24*self+1)+1)/6 % 1 == 0 ? true : false
  end
  def isHexagonal?
    # If n is natural, then self is pentagonal
    # n = sqrt(8x+1)+1/4
    return (Math.sqrt(8*self+1)+1)/4 % 1 == 0 ? true : false
  end
  
  def reverse
    return self.to_s.reverse.to_i
  end
  # Originally swiped from http://snippets.dzone.com/posts/show/6101
  def choose(k)
    self.factorial / (k.factorial * (self-k).factorial)
  end
  def factorial
    (2..self).inject(1) { |f, n| f * n }
  end
end
