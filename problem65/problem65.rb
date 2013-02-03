# generate sequence for e = [2; 1, 2, 1, 1, 4, 1,..., 1, 2k, 1,...]
factors = (1..100/3).flat_map { |i| [1, 2 * i, 1] }
factors = ([2] + factors).take(100)

# calculate the 100th convergent backward
num, den = 1, factors.last
98.downto(0) { |i| num, den = den, num + factors[i] * den }

# `num` and `den` are swapped after calculate
# therefore print out sum of digits in `den` instead
puts den.to_s.chars.map(&:to_i).inject(&:+)