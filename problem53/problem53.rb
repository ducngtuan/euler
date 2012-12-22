def fact n
  return 1 if n.zero?
  (1..n).inject(1){|i, p| i*p}
end

def c(n, r)
  fact(n)/(fact(r) * fact(n-r))
end

@list = []

1.upto(100) do |n|
  1.upto(n) do |r|
    @list << [n, r] if c(n, r) > 1_000_000
  end
end

p @list
puts @list.count