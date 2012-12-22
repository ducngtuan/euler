n, square, sum = 1, 1, 1

while square < 1001
  square += 2
  4.times do
    n = n + square - 1
    sum += n
  end
end

puts sum