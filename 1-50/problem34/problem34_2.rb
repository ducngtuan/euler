start = Time.now

fak = {0 => 1, 1 => 1}
2.upto(9){|i| fak[i] = i*fak[i-1]}

sum = 0
10.upto(1000000) do |n|
  x = n
  digits_sum = 0
  while x != 0
    digits_sum += fak[x%10]
    x /= 10
  end
  sum += n if digits_sum == n
end
puts sum
puts "Time: #{Time.now - start}sec"