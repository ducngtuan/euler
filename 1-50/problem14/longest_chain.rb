def chain_length(n)
  return 1 if n == 1
  return 1 + chain_length(n/2) if n % 2 == 0
  return 1 + chain_length(3*n + 1)
end

max_length = 0
max_start = 1
1.upto(1_000_000) do |i|
  puts i
  l = chain_length(i)
  if max_length < l
    max_length = l
    max_start = i
  end
end

puts max_start
puts chain_length(13)