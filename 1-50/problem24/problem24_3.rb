def fakultat(n)
  return 1 if n < 2
  (2..n).inject(1){|p, i| p*i}
end

def permutation(digit_count, n)
  result = []
  digits = (0..(digit_count - 1)).to_a
  (digit_count - 1).downto(0) do |digit|
    d = n/fakultat(digit)
    result << digits.delete_at(d)
    n -= d * fakultat(digit)
  end
  return result
end

p permutation(10, 999999)