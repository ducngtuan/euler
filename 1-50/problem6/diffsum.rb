sum1, sum2 = 0, 0
1.upto(100) do |i|
  sum1 += i**2
  sum2 += i
end
puts sum2**2 - sum1