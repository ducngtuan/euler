matrix = []
File.open('matrix.txt', 'r').each_line do |line|
  matrix << line.chomp.split(',').map{|i| i.to_i}
end

rows, cols = matrix.size, matrix[0].size
0.upto(rows-1) do |i|
  0.upto(cols-1) do |j|
    next if i.zero? && j.zero?
    
    if i.zero?
      matrix[i][j] += matrix[i][j-1]
    elsif j.zero?
      matrix[i][j] += matrix[i-1][j]
    else
      matrix[i][j] += [matrix[i-1][j], matrix[i][j-1]].min
    end
  end
end

puts matrix[rows-1][cols-1]