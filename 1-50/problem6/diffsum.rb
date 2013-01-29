sum1 = (1..100).map { |i| i**2 }.inject(&:+)
sum2 = (1..100).inject(&:+)
puts sum2**2 - sum1