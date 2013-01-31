def fakultat(n)
  (1..n).inject(1, &:*)
end

def permutation(digits, nth)
  result = []
  (digits.length - 1).downto(0) do |digit|
    d = nth / fakultat(digit)
    result << digits.delete_at(d)
    nth -= d * fakultat(digit)
  end
  return result
end

puts permutation((0..9).to_a, 999999).join