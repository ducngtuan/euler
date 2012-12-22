require 'benchmark'
Benchmark.bm do |x|
  x.report do
    MAX = 40_000
    #@triangle = (1..MAX).map{|n| n*(n + 1)/2}
    @pentagonal = (1..MAX).map{|n| n*(3*n - 1)/2}
    @hexagonal = (1..MAX).map{|n| n*(2*n - 1)}
    p @pentagonal & @hexagonal
  end
end