$itos = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
        11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty",
        30  => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety", 1000 => "one thousand"}
        
def number_to_string(n)
  return "" if n > 1000 or n.zero?
  return $itos[n] if $itos.has_key?(n)
  
  hundreds = if n >= 100
              number_to_string(n/100) + " hundred" + ((n%100 == 0) ? "" : "and")
            else
              ""
            end
  tens = if (n%100 >= 20)
          number_to_string(n%100 - n%10) + ((n%10 == 0) ? "" : "-")
        elsif (n%100 >= 10)
          $itos[n%100]
        else
          ""
        end
  units = if (n%100 >= 10 and n%100 < 20)
          ""
        else
          number_to_string(n%10)
        end

  return hundreds + tens + units
end
result = 0
1.upto(1000){ |i| result += number_to_string(i).delete(" ").delete("-").length }
puts result