i, j = 1, 2
fibs = [1, 2]
while j < 4_000_000
  i, j = j, i + j
  fibs << j
end
puts fibs.select(&:even?).inject(&:+)