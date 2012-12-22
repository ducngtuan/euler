MAX = 1000
p = {}

1.upto(MAX/3) do |a|
  (a+1).upto(MAX-a) do |b|
    c = (a**2 + b**2)**0.5
    i = a + b + c.to_i
    next unless i < MAX
    if c%1 == 0
      p[i] = 0 unless p[i]
      p[i] += 1
    end
  end
end

max_p, max_s = 0, 0
p.each do |k, v|
  max_p, max_s = k, v if v > max_s
end
puts "#{max_p} - #{max_s}"