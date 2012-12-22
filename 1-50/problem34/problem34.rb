start = Time.now

fak = {"0" => 1, "1" => 1}
2.upto(9){|i| fak["#{i}"] = i*fak["#{i-1}"]}
puts (10..1_000_000).select{|x| x == x.to_s.split(//).inject(0){|sum, i| sum + fak[i]}}.inject(0){|s, i| s+i}
puts "Time: #{Time.now - start}sec"