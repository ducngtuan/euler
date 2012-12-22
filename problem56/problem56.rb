max, sum = [], 0

90.upto(99) do |a|
  90.upto(99) do |b|
    dsum = (a**b).to_s.split(//).inject(0){|s, c| c.to_i + s}
    max, sum = [a, b], dsum if sum < dsum
  end
end
p max
puts sum