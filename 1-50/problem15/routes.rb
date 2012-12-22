def k_aus_n(n, k)
  return 1 if k.zero?
  return k_aus_n(n, n-k) if k*2 > n
  
  result = n
  2.upto(k) do |i|
    result = result*(n + 1 - i)/i
  end
  result
end

puts k_aus_n(40, 20)