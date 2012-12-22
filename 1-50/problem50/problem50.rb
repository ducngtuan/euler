MAX = 1_000_000

# generate primes list
@primes = [2]
3.step(MAX, 2) do |i|
  found = false
  @primes.each do |n|
    break if n > i**0.5
    if i%n == 0
      found = true
      break
    end
  end
  @primes << i unless found
end

max, max_count = 0, 0
@primes.reverse_each do |i|
  sum = 0
  count = 0
  @primes.each do |n|
    sum += n
    count += 1
    break if sum >= i
  end
  if sum > i
    @primes.each do |n|
      sum -= n
      count -= 1
      break if sum <= i
    end
  end
  max, max_count = i, count if sum == i and count > max_count
end
puts "#{max} - #{max_count}"