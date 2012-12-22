sum = 0
0.upto(9) do |digit1|
  0.upto(9) do |digit2|
    0.upto(9) do |digit3|
      0.upto(9) do |digit4|
        0.upto(9) do |digit5|
          0.upto(9) do |digit6|
            n = digit1**5 + digit2**5 + digit3**5 + digit4**5 + digit5**5 + digit6**5
            if n == digit1*100_000 + digit2*10_000 + digit3*1000 + digit4*100 + digit5*10 + digit6
              puts n
              sum += n unless n == 1
            end
          end
        end
      end
    end
  end
end
puts sum