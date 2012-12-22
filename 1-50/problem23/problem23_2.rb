def abundant?(n)
  divisors = []
  1.upto(n**0.5) do |i|
    if n%i == 0
      divisors << i
      divisors << n/i
    end
  end
  return true if divisors.uniq.inject(0){|s, i| s+i} > 2*n
  false
end
 
module Enumerable
  def sum
    inject(0) {|n,i| n + i }
  end
end
 
max_num = 20_200
 
abundants = (1..max_num).select {|i| abundant?(i) }
 
sums = Hash.new
until abundants.empty?
  i = abundants.shift
  sums[i*2] = 1
  abundants.each do |j|
    sum = i + j
    break if sum > max_num
    sums[sum] = 1
  end
end
 
p ((1..max_num).to_a - sums.keys).sum