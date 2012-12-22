def gcd(a, b)
  return b if a.zero?
  
  while !b.zero?
    a, b = b, a % b
  end
  a
end

def lcm(a, b)
  a/gcd(a, b)*b
end

r = 1
2.upto(20) do |i|
  r = lcm(i, r)
  puts r
end
puts r