primes = [2]
n = 3

while primes.size < 10001
  max = n ** 0.5
  is_prime = true
  primes.each do |p|
    break if p > max
    if n % p == 0
      is_prime = false
      break
    end
  end
  primes << n if is_prime
  n += 2
end
puts primes.last