# see http://thejosephturner.com/blog/2011/04/02/project-euler-problem-69/

@primes = [2]

3.step(1000, 2) do |i|
  max = i**0.5
  is_prime = false
  @primes.each do |p|
    if p > max
      is_prime = true
      break
    end
    break if i % p == 0
  end
  @primes << i if is_prime
end

n = 1
@primes.each do |i|
  if n*i > 1000000
    puts n
    break
  end
  n *= i
end