require 'date'
count = 0
2000.downto(1901) do |y|
  12.downto(1) do |m|
    count += 1 if Date.civil(y, m).wday == 0
  end
end
puts count 