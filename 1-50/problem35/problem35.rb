def prime?(n)
  return false if n < 2
  return true if n == 2
  
  3.step(n**0.5, 2) {|i| return false if n%i == 0}
  return true
end

def circular_prime?(n)
  return true if n == 2 or n == 5
  return false if n.to_s !~ /^(1|3|7|9)+$/
  return false unless prime?(n)
  
  return true if n < 10
  0.upto(n.to_s.length - 1) do |i|
    n = (n.to_s[1..-1] + n.to_s[0, 1]).to_i
    return false unless prime?(n)
  end
  return true
end

puts (1..999999).select{|n| circular_prime?(n)}.size