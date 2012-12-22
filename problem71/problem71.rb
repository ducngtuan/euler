# see http://en.wikipedia.org/wiki/Farey_sequence
def gcd(a, b)
  return a if b.zero?
  gcd(b, a%b)
end

1000000.downto(1) do |d|
  n = (3*d - 1)
  if n % 7 == 0
    n /= 7
    if gcd(n, d) == 1
      puts "#{n}/#{d}"
      break
    end
  end
end