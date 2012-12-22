@coins = [1, 2, 5, 10, 20, 50, 100, 200]
@count = {}

def count(n, m)
  return 1 if n == 0
  return 0 if n < 0
  return 0 if m <= 0 and n >= 1
  
  return count(n, m-1) + count(n - @coins[m-1], m)
end

puts count(200, @coins.length)