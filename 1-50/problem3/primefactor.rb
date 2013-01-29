n = 600851475143
i = 2
while n != 1
  n /= i while n % i == 0
  i += 1
end
puts i - 1