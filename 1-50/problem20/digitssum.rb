puts (1..100).to_a.inject(1){|prod, item| prod*item}.to_s.split(//).inject(0){|sum, item| sum + (item.to_i)}