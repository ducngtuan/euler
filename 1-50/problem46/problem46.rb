@primes = [2]
current_prime = 3
while @primes.length < 1000
  @primes << current_prime if @primes.index{|i| current_prime %i == 0}.nil?
  current_prime += 2
end

current_odd = 33
while true
  current_odd += 2
  # found = false
  # @primes.each do |i|
  #   break if i > current_odd
  #   
  #   square = ((current_odd - i)/2)**0.5
  #   if (square == square.to_i)
  #     found = true
  #     break
  #   end
  # end
  # 
  # unless found
  #   puts "#{current_odd}"
  #   exit
  # end
  
  #rubyish but slower:
  if @primes
      .take_while{|i| i <= current_odd}
      .index do |i|
        square = ((current_odd - i)/2)**0.5
        square == square.to_i
      end
      .nil?
    puts "#{current_odd}"
    exit
  end
end