MAX = 1000

max_p, max_s = 0, 0
4.step(MAX-1, 2) do |p|
  count = 0
  1.upto(p/4) do |a|
    count += 1 if (p*p - 2*a*p) % (2*p - 2*a) == 0
  end
  max_p, max_s = p, count if count > max_s
end

puts "#{max_p} - #{max_s}"

