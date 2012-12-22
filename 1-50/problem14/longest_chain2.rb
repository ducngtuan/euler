$chain_length = {1 => 4}

def chain(n)
  return 1 if n == 1
  return $chain_length[n] if $chain_length.has_key?(n)
  
  if n%2 == 0
    $chain_length[n] = 1 + chain(n/2)
  else
    $chain_length[n] = 1 + chain(n*3 + 1)
  end
  $chain_length[n]
end

max_length = 4
max_start = 1
2.upto(1_000_000) do |i|
  puts i
  l = chain(i)
  if max_length < l
    max_length = l
    max_start = i
  end
end

puts max_start