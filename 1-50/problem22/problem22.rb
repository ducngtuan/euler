names = nil
File.open("names.txt") do |f|
  names = f.gets.split(",").map{|name| name[1..-2]}
  names.sort!
  names.map! do |name|
    score = 0
    name.each_byte{|c| score += c - 64}
    score
  end
  result = []
  1.upto(names.size){|i| result << names[i-1] * i}
  puts result.inject(0){|sum, item| sum + item}
end