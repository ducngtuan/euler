fib1, fib2, count = 1, 1, 2
max = ('1' + '0' * 999).to_i
while fib2 < max
  fib1, fib2, count = fib2, fib1 + fib2, count + 1
end
#puts fib2
puts count