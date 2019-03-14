#If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, 
#there are exactly three solutions for p = 120.
#
# {20,48,52}, {24,45,51}, {30,40,50}
#
#For which value of p <= 1000, is the number of solutions maximised?

require_relative 'euler.rb'

# for each P find out how many integer solutions there are
# display P with highest number of integer solutions

solutionsFound = {}

p = 120
a = 20
b = 48

(1000).downto(3).each do |p|
	isGood = false
	solutions = Array.new()
	(500).downto(1).each do |a|
		(1..500).each do |b|
			c = Math.sqrt((a*a)+(b*b))
			if ((a+b+c) % 1 == 0) && (p-(a+b+c) == 0)
				solutions << [a,b,c]
				puts "#{p} : #{a},#{b},#{c}"
			end
		end
	end
	solutionsFound["#{p}"] = solutions.length
end


solutionsFound.each{|k,v| puts "#{k} = #{v/2}"}
