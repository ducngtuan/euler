def modpow(a, b, m)
  result = 1
  while b > 0
    result = result * a % m if (b & 1) > 0
    b >>= 1
    a = (a*a) % m
  end
  result
end
n = modpow(2, 7830457, 10_000_000_000)
n = (n*28433 + 1)

puts n % 10_000_000_000