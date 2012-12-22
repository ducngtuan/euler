i = 1.upto(10000)
  .group_by { |i| (i**3).to_s.split(//).sort.join }
  .select { |k, v| v.length == 5 }
  .map { |k, v| v.min }
  .min

puts "#{i}**3 = #{i**3}"