sums = Array.new(10000, 0)

1.upto(9999) do |i|
  factor = 2
  multiple = factor * i
  while multiple < 10000
    sums[multiple] += i
    factor += 1
    multiple = factor * i
  end
end

result = 0
1.upto(9999){|x| result += sums[x] if x == sums[sums[x]] and sums[x] != x}
puts result