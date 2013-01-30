@chains = {1 => 1}
def chain_length(n)
  return @chains[n] if @chains.key?(n)
  
  @chains[n] = 1 + (n % 2 == 0 ? chain_length(n / 2) : chain_length(n * 3 + 1))
end

max_start, max_length = 1, 1
(2..1_000_000).each do |i|
  len = chain_length(i)
  if len > max_length
    max_length = len
    max_start = i
  end
end
puts max_length, max_start