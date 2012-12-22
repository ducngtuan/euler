require 'benchmark'
def prime?(n)
  return false if n < 2
  return true if n == 2
  return false if n%2 == 0
  3.step(n**0.5, 2) do |i|
    return false if n%i == 0
  end
  return true
end

def prime_count(a, b)
  n, count = 2, 2
  n, count = n + 1, count + 1 while prime?(n**2 + a*n + b)
  return count
end

Benchmark.bm do |x|
  x.report do
    prod, max, count = 0, 0, 0
    0.upto(999) do |b|
      next unless prime?(b)
      0.upto(999) do |a|
        next if a%2 == 0
        next if a+b < 0
        next unless prime?(1+a+b)
        prod, max = a*b, count if max < count = prime_count(a, b)
        prod, max = a*b, count if max < count = prime_count(-a, -b)
        prod, max = -a*b, count if max < count = prime_count(-a, b)
        prod, max = -a*b, count if max < count = prime_count(a, -b)
      end
    end
    puts prod 
  end
end