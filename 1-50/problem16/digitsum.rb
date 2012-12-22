s = 2**1000
s = s.to_s
sum = 0
0.upto(s.length-1) do |i|
  sum += s[i, 1].to_i
end
puts sum