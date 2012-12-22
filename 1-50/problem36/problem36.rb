require 'benchmark'
def dec_to_bin(n)
  return "0" if n.zero?
  bin = ""
  while n > 0
    bin += (n%2 == 0) ? "0" : "1"
    n /= 2
  end
  return bin.reverse
end

def palin?(n)
  n.to_s == n.to_s.reverse
end

# nums = []
# 1.upto(999_999) do |n|
#   nums << n if palin?(n) and palin?(dec_to_bin(n))
# end
# puts nums.inject(0){|s, i| s+i}

Benchmark.bm do |x|
  x.report('dec_to_bin') do
    nums = []
    1.upto(999_999) do |n|
      nums << n if palin?(n) and palin?(dec_to_bin(n))
    end
    nums.inject(0){|s, i| s+i}
  end
  x.report('to_s(2)') do
    nums = []
    1.upto(999_999) do |n|
      nums << n if palin?(n) and palin?(n.to_s(2))
    end
    nums.inject(0){|s, i| s+i}
  end
end