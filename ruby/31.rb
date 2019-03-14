require 'euler.rb'

@amts = [200,100,50,20,10,5,2,1]
 
def curr_comb(val,max_coin)
  return 1 if val==0
  
  @amts.select{|n| n<=val && n<=max_coin}.inject(0) do |count,n|
    count + curr_comb(val-n,n)
  end
  
end
 
puts curr_comb(ARGV[0].to_i,ARGV[0].to_i)