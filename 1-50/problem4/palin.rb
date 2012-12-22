a = []
i = 990
while i >= 100
  999.downto(100) do |j|
    n = i*j
    s = n.to_s
    if s == s.reverse
      a << n
    end
  end
  i -= 11
end
puts a.max
