def sub_string_divisible?(n)
  return false if (n%1_000) % 17 != 0
  return false if ((n/10) % 1_000) % 13 != 0
  return false if ((n/100) % 1_000) % 11 != 0
  return false if ((n/1000) % 1_000) % 7 != 0
  return false if ((n/10_000) % 1_000) % 5 != 0
  return false if ((n/100_000) % 1_000) % 3 != 0
  return false if ((n/1_000_000) % 1_000) % 2 != 0
  return true
end

class Array
  def permute(prefix=[])
    if (length < 2)
      yield(prefix + self)
    else
      each do |e|
        (self - [e]).permute(prefix + [e]) {|a| yield a}
      end
    end
  end
end

founds = []
(0..9).to_a.permute() do |k|
  next if k.first.zero?
  i = k.join().to_i
  if sub_string_divisible?(i)
    puts i
    founds << i
  end
end

puts "sum: #{founds.inject(0){|a, s| a+s}}"