#The fraction 49/98 is a curious fraction, as an inexperienced mathematician in 
#attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is 
#correct, is obtained by cancelling the 9s.
#
#We shall consider fractions like, 30/50 = 3/5, to be trivial examples.
#
#There are exactly four non-trivial examples of this type of fraction, less than 
#one in value, and containing two digits in the numerator and denominator.
#
#If the product of these four fractions is given in its lowest common terms, 
#find the value of the denominator.

require_relative 'euler'

(10..98).each do |n|
	(10..99).each do |d|
		next if n > d
		next if n == d
		#puts "Trying: #{n}/#{d}"

		nd = n.digits
		dd = d.digits
		canCancel = false
		nd.each do |dig|
			if (dd.include?(dig))
				next if dig == 0 # Trivial
				canCancel = true
				dd.delete_at(dd.find_index(dig))
				nd.delete_at(nd.find_index(dig))
			end
		end
		nd = nd.join().to_i
		dd = dd.join().to_i
		if (canCancel && nd != 0)
			#puts "\tCancelling to: #{nd}/#{dd}"
			# Does n/d equal nd/dd after cancellation?
			if(dd == 0 ? Rational(n,d) == n : Rational(nd,dd) == Rational(n,d)) 
				puts "\t\tPossible Match in #{n}/#{d} -> #{nd}/#{dd}"
			end
		end
	end
end

#		Possible Match in 16/64 -> 1/4
#		Possible Match in 19/95 -> 1/5
#		Possible Match in 26/65 -> 2/5
#		Possible Match in 49/98 -> 4/8 ( 1/2 )

# 1/4 * 1/5 * 2/5 * 1/2 = (1*1*2*1) / (4*5*5*2) = 2/200 = 1/100
# Answer: 100


