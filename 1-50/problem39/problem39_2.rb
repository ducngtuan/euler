max, pmax = 0, 0
4.step(999, 2) do |p|
  count = 0
  1.upto(p/4) do |a|
    (a+1).upto((p-a)/2) do |b|
      c = p - a - b
      (count += 1; puts "#{p} - #{a} - #{b} - #{c}") if a**2 + b**2 == c**2
    end
  end
  max, pmax = count, p if max < count
end

puts "#{pmax} -- #{max}"