def generate(n)
  return 0 if n.zero?
  return n + generate(n-1) if n % 2 == 1
  
  return n * (n + 1) / 2
end

def divisors_count(n)
  sqrt = (n**0.5).to_i
  count = (1...sqrt).count { |i| n % i == 0 } * 2
  count += 1 if sqrt ** 2 == n

  return count
end

i = 1
i += 1 while divisors_count(generate(i)) <= 500
puts "#{i}: #{generate(i)}" # 12375 - 76576500