@triangle = []
File.open("triangle.txt") do |f|
  while line = f.gets
    @triangle << line.split.map!{|x| x.to_i}
  end
end

(@triangle.size - 2).downto(0) do |row|
  0.upto(@triangle[row].size - 1) do |col|
      @triangle[row][col] += [@triangle[row + 1][col + 1], @triangle[row + 1][col]].max
  end
end

puts @triangle[0][0]