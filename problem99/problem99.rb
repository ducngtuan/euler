inputs = []
File.open('base_exp.txt').each_line do |line|
  inputs << line.chomp.split(',').map{|i| i.to_f}
end
puts "end reading file..."

max, line = 0, 0
inputs.each_with_index do |x, i|
  val = x[1]*Math.log10(x[0])
  max, line = val, i+1 if max < val
end

p inputs[line]
p line