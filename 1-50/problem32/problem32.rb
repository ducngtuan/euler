@products = []

def check(a, b)
  c = a*b
  s = (c.to_s + a.to_s + b.to_s)
  if s.length == 9 && !s.include?("0")
    digits = []
    s.each_char do |d|
      return if digits.include?(d)
      digits << d
    end
    puts "#{a}*#{b}=#{c}"
    @products << c unless @products.include?(c)
  end
end

1.upto(9) do |a|
  1000.upto(9999) do |b|
    check(a, b)
  end
end

10.upto(99) do |a|
  100.upto(999) do |b|
    check(a, b)
  end
end

puts @products.inject(0){|a,s| a+s}