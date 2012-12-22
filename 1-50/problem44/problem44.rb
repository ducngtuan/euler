def pentagonal?(n)
  i = (1 + (1 + 24*n)**0.5)/6
  return (i.to_i == i)
end

@pentagons = []
1.upto(2500) do |i|
  @pentagons << i*(3*i - 1)/2
end

#the answer is in range 1500-2500
len = @pentagons.length-1
1500.upto(len) do |i|
  d = @pentagons[i]
  (i+1).upto(len) do |j|
    c = @pentagons[j]
    a = (c+d)/2
    b = (c-d)/2
    if pentagonal?(a) && pentagonal?(b)
      puts "#{a} - #{b} = #{d}"
      exit
    end
  end
end