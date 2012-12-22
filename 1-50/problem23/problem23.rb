def abundant?(n)
  sum = 1
  2.upto(n**0.5) do |i|
    sum += i + n/i if n%i == 0
  end
  sum -= (n**0.5).floor if ((n**0.5).floor)**2 == n
  return true if sum > n
  false
end

@abundant = (1..28123).select{|n| abundant?(n)}
@sum = []
0.upto(@abundant.size - 2) do |i|
  i.upto(@abundant.size - 1) do |j|
    @sum << @abundant[i] + @abundant[j]
  end
end
puts (1..28123).inject(0){|s, i| s+i} - @sum.select{|n| n <= 28123}.uniq.inject(0){|s, i| s+i}