require 'euler.rb'

triangle = [
%w{75},
%w{95 64},
%w{17 47 82},
%w{18 35 87 10},
%w{20 04 82 47 65},
%w{19 01 23 75 03 34},
%w{88 02 77 73 07 63 67},
%w{99 65 04 28 06 16 70 92},
%w{41 41 26 56 83 40 80 70 33},
%w{41 48 72 33 47 32 37 16 94 29},
%w{53 71 44 65 25 43 91 52 97 51 14},
%w{70 11 33 28 77 73 17 78 39 68 17 57},
%w{91 71 52 38 17 14 91 43 58 50 27 29 48},
%w{63 66 04 68 89 53 67 30 73 16 69 87 40 31},
%w{04 62 98 27 23 09 70 98 73 93 38 53 60 04 23} 
]

triangle.each_with_index do |r,ri|
  puts "row #{ri} size: #{r.size}"
  r.each_with_index do |c,ci|
    up = 0
    upLeft = 0

    if ri-1 >= 0 
      if ci < triangle[ri-1].size
        up = triangle[ri-1][ci].to_i
      end
      if ci-1 <= triangle[ri-1].size && ci-1 >= 0
        upLeft = triangle[ri-1][ci-1].to_i
      end
    end

    #puts "\tAt: #{c} up = #{up} upLeft = #{upLeft}"
    triangle[ri][ci] = [c.to_i+up,c.to_i+upLeft].max
  end
end

triangle.each do |t|
  puts "#{t.max} \t #{t.join("|")}"
end