def generate(n)
  return 0 if n.zero?
  return n + generate(n-1) if n % 2 == 1
  
  n/2*(n + 1)
end

def divisors_count(n)
  count = 2
  i = n**0.5
  while i > 1
    count += 2 if n%i == 0
    i -= 1
  end
  count
end

i = 1
while divisors_count(generate(i)) <= 500
  puts i
  i += 1
end
puts generate(i)