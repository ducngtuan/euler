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
  if (k[1]*100 + k[2]*10 + k[3]) % 2 == 0
    if (k[2]*100 + k[3]*10 + k[4]) % 3 == 0
      if (k[3]*100 + k[4]*10 + k[5]) % 5 == 0
        if (k[4]*100 + k[5]*10 + k[6]) % 7 == 0
          if (k[5]*100 + k[6]*10 + k[7]) % 11 == 0
            if (k[6]*100 + k[7]*10 + k[8]) % 13 == 0
              if (k[7]*100 + k[8]*10 + k[9]) % 17 == 0
                puts k.join
                founds << k.join.to_i
              end
            end
          end
        end
      end
    end
  end
end

puts "sum: #{founds.inject(0){|a, s| a+s}}"