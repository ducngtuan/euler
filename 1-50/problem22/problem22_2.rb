sum = 0
File.new("names.txt").gets.split(",").map{|name| name[1..-2]}.sort.each_with_index do |name, x|
  sum += (x+1) * name.split(//).inject(0){|sum, char| sum += char[0] - 64}
end
puts sum