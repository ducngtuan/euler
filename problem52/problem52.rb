def check(n)
  digits = n.to_s.split(//).sort
  2.upto(6) do |i|
    return false if (i*n).to_s.split(//).sort != digits
  end
  return true
end

i = 10
i += 1 while !check(i)
puts i