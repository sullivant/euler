require 'euler.rb'

m = ARGV[0].to_i - 1  # Max
p = ARGV[1].to_i      # Range to permute

str = ""
range = (0..p)
chars = range.to_a

range.each do |n|
  f = (p-n).factorial #(9-0)! , (9-1)!...
  s = m/f.to_i  # 
  str += chars[s].to_s
  m = m % f
  chars.delete_at(s)
  chars = chars.compact
end

p str
