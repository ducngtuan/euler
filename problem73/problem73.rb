count = 0
12000.downto(5) do |d|
  (d/3 + 1).upto(d/2) do |n|
    count += 1 if n.gcd(d) == 1
  end
end
puts count