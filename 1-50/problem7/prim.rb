@prim = [2]
count = 1

def prime?(n)
  return false if n < 2
  return true if n == 2
  max = n**0.5
  @prim.each do |i|
    return true if i > max
    return false if n % i == 0
  end
  return true
end

p = 3
while count < 10001
  if prime?(p)
    @prim << p
    count += 1
  end
  p += 2
end

puts @prim.last