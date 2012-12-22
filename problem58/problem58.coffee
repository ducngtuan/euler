is_prime = (number) ->
  return false if number % 2 == 0
  
  for i in [3..Math.floor(Math.sqrt number)] by 2
    return false if number % i == 0
    
  return true

n = 49
total = 13
count = 8.0
inc = 8
while count/total >= 0.1
  total += 4
  
  n += inc
  count += 1 if is_prime(n)
  
  n += inc
  count += 1 if is_prime(n)

  n += inc
  count += 1 if is_prime(n)

  n += inc
  
  console.log n
  inc += 2

console.log (inc-1)