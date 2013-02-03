@f = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]

def facsum(n)
  result = 0
  while n > 0
    result += @f[n % 10]
    n /= 10
  end
  return result
end

@buff = {
  169 => 3,
  363601 => 3,
  1454 => 3,
  871 => 2,
  45361 => 2,
  872 => 2,
  45362 => 2
}

result = 0
1.upto(1_000_000) do |i|
  n = i
  seq = []
  count = 0
  until seq.include?(n)
    seq << n
    n = facsum(n)
    count += 1
    if @buff.key?(n)
      count += @buff[n]
      break
    end
  end
  result += 1 if count == 60

  seq.each { |j| @buff[j] = count; count -= 1 }
end
puts result