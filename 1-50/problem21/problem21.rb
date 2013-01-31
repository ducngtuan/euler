def divisors_sum(n)
  (2..n**0.5).select { |x| n % x == 0 }.map { |x| x + n / x }.inject(0, &:+) + 1
end

sums = []
1.upto(9999) { |x| sums[x] = divisors_sum(x) }
puts 1.upto(9999).select { |x| sums[sums[x]] == x && sums[x] != x }
      .inject(0) { |sum, x| sum + sums[x] }