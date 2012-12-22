result = 0
1.upto(9) do |n|
  result += (1.0/(1 - Math.log10(n))).to_i
end

puts result