# took too long to run!
count = 0
0.upto(200) do |a|
  0.upto(100) do |b|
    0.upto(40) do |c|
      0.upto(20) do |d|
        0.upto(10) do |e|
          0.upto(4) do |f|
            0.upto(1) do |g|
              count += 1 if a + 2*b + 5*c + 10*d + 20*e + 50*f + 100*g == 200
            end
          end
        end
      end
    end
  end
end

#puts count