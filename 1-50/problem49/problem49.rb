def prime?(n)
  return false if n < 2
  return true if n == 2
  return false if n%2 == 0
  
  3.step(n**0.5, 2) do |i|
    return false if n%i == 0
  end
  return true
end

def same_digits?(a, b)
  digits_a = a.to_s.split(//).sort
  digits_b = b.to_s.split(//).sort
  return digits_a == digits_b
end

1489.step(9999-3330, 2) do |a|
  b = a+3330
  c = b+3330
  
  if prime?(a) && prime?(b) && prime?(c) &&
      same_digits?(a, b) && same_digits?(a, c)
    puts "#{a}#{b}#{c}"
  end
end