str = (1..200000).to_a.join
result = 1
0.upto(6) do |i|
  result *= str[10**i-1,1].to_i
end
puts result