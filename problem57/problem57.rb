def gcd(a, b)
  return a if b.zero?
  return gcd(b, a % b)
end

a, b = 1, 1
count = 0

1.upto(1_000) do
  a, b = a+2*b, a+b
  # gcd = gcd(a, b)
  # a /= gcd
  # b /= gcd
  count += 1 if a.to_s.length > b.to_s.length
end

puts count