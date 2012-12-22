File.open("words.txt") do |f|
  @words = f.gets.split(",").map{|w| w[1..-2]}.map! do |w|
    score = 0
    w.each_byte{|c| score += c - 64}
    score
  end
end

@triangle_numbers = (1..20).map{|n| n*(n+1)/2}
puts @words.select{|w| @triangle_numbers.include?(w)}.size