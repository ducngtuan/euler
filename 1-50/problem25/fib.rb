fib1, fib2, count = 1, 1, 2
while fib2.to_s.length < 1000
  fib1, fib2, count = fib2, fib1 + fib2, count + 1
end
puts fib2
puts count