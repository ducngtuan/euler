def pandigital?(n)
  #method defined specific for a string as parameter
  #return false if n < 123456789 || n > 987654321
  
  s = n.to_s
  return false if s.include?("0") || s.length != 9
  
  digits = []
  s.each_char do |d|
    return false if digits.include?(d)
    digits << d
  end
  
  return true
end

1.upto(9999) do |i|
  n = 2
  s = i.to_s
  while s.length < 9
    s += (i*n).to_s
    n += 1
  end
  puts s if pandigital?(s)
end