n = 600851475143
i = 2
begin
  puts i if n%i == 0
  while n%i == 0
    n /= i
  end
  i += 1
end until n==1

puts i-1