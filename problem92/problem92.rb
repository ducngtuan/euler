def next_number(n)
  result = 0
  result, n = result + (n%10)**2, n/10 while n > 0
  
  return result
end

MAX = 10_000_000
count = 0
buffer = Hash.new
buffer[1] = false
buffer[89] = true

1.upto(567) do |i|
  n = i
  while !buffer.key?(n)
    n = next_number(n) 
  end
  
  buffer[i] = buffer[n]
  count += 1 if buffer[i]
end
puts "end generate buffer to 567..."

568.upto(MAX-1) do |i|
  count += 1 if buffer[next_number(i)]
end

puts count