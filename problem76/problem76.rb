def count(n, m)
  return 0 if n < 0
  return 1 if n.zero?
  return 0 if m <= 0 and n >= 1
  
  return count(n, m-1) + count(n-m, m)
end

puts count(100, 99) # took too long to run!