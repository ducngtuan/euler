#!/usr/bin/ruby
i, j = 1, 2
sum = 2

while j < 4_000_000
  i, j = j, i+j
  sum += j if j % 2 == 0
end

puts sum
