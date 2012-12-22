1.upto(333) do |a|
  1.upto(1000 - a) do |b|
    c = 1000 - a - b
    puts "a = #{a} -- b = #{b} -- c = #{c} -- abc = #{a*b*c}" if a**2 + b**2 == c**2
  end
end