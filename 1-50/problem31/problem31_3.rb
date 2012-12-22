target = 200
coins = [1, 2, 5, 10, 20, 50, 100, 200]
ways = Array.new(target+1, 0)
ways[0] = 1

coins.each do |coin|
  coin.upto(target) do |i|
    ways[i] += ways[i-coin]
  end
end

puts ways[target]