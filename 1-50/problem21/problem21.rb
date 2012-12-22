def divisors_sum(n)
  max = n**0.5
  (2..max).select{|x| n%x == 0}.inject(0){|sum, item| sum + item + n/item} + 1
end

sums = []
1.upto(9999){|x| sums[x] = divisors_sum(x)}

result = 0
1.upto(9999){|x| result += x if sums[sums[x]] == x and sums[x] != x}

puts result