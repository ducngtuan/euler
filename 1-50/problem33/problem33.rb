def simplify(num, den)
  gcd = num.gcd den
  return [num/gcd, den/gcd]
end

def uncorrect_simplify(num, den)
  num, den = num.to_s, den.to_s
  den.each_char do |c|
    next if c == "0"
    return [num.gsub(c, "").to_i, den.gsub(c, "").to_i] if num.include?(c)
  end
  return [num.to_i, den.to_i]
end

@filter = []

10.upto(99) do |a|
  (a+1).upto(99) do |b|
    n, d = uncorrect_simplify(a, b)
    next if d.zero? or n == a
    @filter << [a, b] if simplify(n, d) == simplify(a, b)
  end
end

p @filter
n, d = @filter.inject([1,1]){|p, x| [p[0]*x[0], p[1]*x[1]]}
n, d = n/n.gcd(d), d/d.gcd(n)
puts "#{n}/#{d}"