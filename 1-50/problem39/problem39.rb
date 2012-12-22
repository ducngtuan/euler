max, pmax = 0, 0
3.upto(999) do |p|
  count = 0
  1.upto(p-2) do |a|
    a.upto(p-a-1) do |b|
      next if a + b < c = p - a - b
      (count += 1; puts "#{p} - #{a} - #{b} - #{c}") if a**2 + b**2 == c**2
    end
  end
  max, pmax = count, p if max < count
end

puts "#{pmax} -- #{max}"