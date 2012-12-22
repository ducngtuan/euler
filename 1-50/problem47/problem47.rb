# generate primes
@primes = [2]
3.step(750, 2) do |i|
  @primes.each do |n|
    next if i%n == 0
    break if n > i**0.5
  end
  @primes << i
end
puts "Primes generated..."

def count_distinct_prime_factors(n)
  count = 0
  @primes.each do |i|
    return count if n == 1
    if n%i == 0
      count += 1
      n /= i while n%i == 0
    end
  end
end

n = 647
@buffer = Hash.new
@buffer[n] = count_distinct_prime_factors(n)
@buffer[n+1] = count_distinct_prime_factors(n+1)
@buffer[n+2] = count_distinct_prime_factors(n+2)
@buffer[n+3] = count_distinct_prime_factors(n+3)
while true
  if @buffer[n+3] != 4
    n += 4
    @buffer[n] = count_distinct_prime_factors(n)
    @buffer[n+1] = count_distinct_prime_factors(n+1)
    @buffer[n+2] = count_distinct_prime_factors(n+2)
    @buffer[n+3] = count_distinct_prime_factors(n+3)
  elsif @buffer[n+2] != 4
    n += 3
    @buffer[n+1] = count_distinct_prime_factors(n+1)
    @buffer[n+2] = count_distinct_prime_factors(n+2)
    @buffer[n+3] = count_distinct_prime_factors(n+3)
  elsif @buffer[n+1] != 4
    n += 2
    @buffer[n+2] = count_distinct_prime_factors(n+2)
    @buffer[n+3] = count_distinct_prime_factors(n+3)
  elsif @buffer[n] != 4
    n += 1
    @buffer[n+3] = count_distinct_prime_factors(n+3)
  else
    puts n
    exit
  end
end