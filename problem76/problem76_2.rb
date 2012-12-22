target = 100
ways = Array.new(target+1, 0)
ways[0] = 1

1.upto(target-1) do |i|
  i.upto(target) do |j|
    ways[j] += ways[j-i]
  end
end

puts ways[target]