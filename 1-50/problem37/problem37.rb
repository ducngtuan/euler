@truncable = []
@primes = [2]

def prime?(n)
  return false if n < 2
  return true if n == 2
  return false if n % 2 == 0
  
  3.step(n**0.5+1, 2) do |i|
    return false if n%i == 0
  end
  return true
end

def truncable?(n)
  return false if n < 10
  l = 10
  while l < n
    return false unless prime?(n/l)
    return false unless prime?(n%l)
    l *= 10
  end
  puts n
  @truncable << n
  return true
end

current = 3
count = 0
while count < 11
  if prime?(current)
    count += 1 if truncable?(current)
  end
  current += 2
end

puts "sum: #{@truncable.inject(0){|a, s| a+s}}"