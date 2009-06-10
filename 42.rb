require 'euler.rb'

words = Array.new()
tCount = 0
f = File.open("42.words", 'r')

f.each do |l|
  words += l.split(",")
end

words.each do |w|
  w.gsub!(/"/,'')
  s = 0
  w.each_byte do |c|
    s += c.to_i-64
  end
  puts "Testing: '#{w}'"
  if s.isTriangle?
    tCount += 1
  end
end  

puts tCount
