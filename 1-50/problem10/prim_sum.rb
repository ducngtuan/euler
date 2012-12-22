$prim = [2]
MAX = 2_000_000

def prime?(n)
  return false if n < 2
  return true if n == 2
  m = n**0.5
  $prim.each do |i|
    return true if i > m
    return false if n % i == 0
  end
  return true
end

p = 3
while p < MAX
  if prime?(p)
    $prim << p
    puts p
  end
  p += 2
end
sum = 0
$prim.inject(0){|sum, item| sum += item}
puts sum