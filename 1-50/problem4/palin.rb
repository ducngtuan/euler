a = []
990.step(100, -11) do |i|
  999.downto(100) do |j|
    n = i*j
    s = n.to_s
    a << n if s == s.reverse
  end
end
puts a.max