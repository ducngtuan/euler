max_length = 4
max_start = 1
2.upto(1_000_000) do |i|
  puts i
  l, j = 1, i;
  while (j != 1)
    j = (j%2 == 0) ? j/2 : j*3 + 1
    l += 1
  end
  if max_length < l
    max_length = l
    max_start = i
  end
end

puts max_start