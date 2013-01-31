def abundant?(n)
  sqrt = (n**0.5).to_i
  div_sum = 0
  1.upto(sqrt) { |i| div_sum += i + n/i if n % i == 0 }
  div_sum -= sqrt if sqrt * sqrt == n
  
  return div_sum > 2 * n
end
 
max_num = 20_200 
abundants = (1..max_num).select { |i| abundant?(i) }
sums = []
until abundants.empty?
  i = abundants.shift
  sums << i * 2
  abundants.each do |j|
    sum = i + j
    sums << sum
    break if sum > max_num
  end
end
 
puts ((1..max_num).to_a - sums).inject(&:+)