def prime?(number)
  # assert number > 2
  return false if number % 2 == 0
  
  3.step(number**0.5, 2) do |i|
    return false if number % i == 0
  end
  return true
end

n = 49
total = 13
count = 8
inc = 8
while (count >= total * 0.1)
  total += 4
  
  3.times { count += 1 if prime?(n += inc) }

  n += inc
  inc += 2
end
puts (inc - 1)