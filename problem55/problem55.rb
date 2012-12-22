def palindrome?(n)
  s = n.to_s
  return s == s.reverse
end

buff = Hash.new
current = 0
found = []
while current <= 10_000
  if buff[current].nil?
    tries = [current]
    tries_count = 0
    while tries_count < 50
      tries_count += 1
      current_rev = tries.last.to_s.reverse.to_i
      sum = tries.last + current_rev
      tries << current_rev
      
      if palindrome?(sum)
        #warning: 6910 -> 0196 != 196
        tries.each {|i| buff[i] = false unless buff[i] }
        break
      end
      tries << sum
    end
    if buff[current].nil?
      buff[current] = true
      found << current
      #puts current
    end
  end
  current += 1
end

puts buff.select{|k, v| v == true}.size
puts found.size