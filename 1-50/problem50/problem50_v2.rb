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

# buffer cumulative sum
@sums = [0]
@primes.each {|n| @sums << n + @sums.last }
puts @sums.size
puts @primes.size

# find that prime
max, max_count = 0, 0
@primes.reverse_each do |i|
  l_index, r_index = 0, @sums.size
  while l_index < r_index
    mid = (l_index + r_index) / 2
    if @sums[mid] > i
      r_index = mid - 1
    else
      l_index = mid + 1
    end
  end
  
  r_index += 1
  l_index = 0
  l_index += 1 while @sums[r_index] - @sums[l_index] > i
  if @sums[r_index] - @sums[l_index] == i and r_index - l_index > max_count
    max, max_count = i, r_index - l_index
  end
end
puts "#{max} - #{max_count}"