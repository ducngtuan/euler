sums = Array.new(10000, 1)

2.upto(9999) do |i|
  (i + i).step(9999, i) do |j|
    sums[j] += i
  end
end

result = 0
sums.each_with_index { |e, x| result += e if x == sums[sums[x]] and sums[x] != x }
puts result