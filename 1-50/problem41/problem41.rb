class Array  
  def permutates(&blk)
    a = Array.new(self)
    n = a.length
    p = Array.new(n+1,0)
    i = 1
    
    blk.call a

    while i < n do
      if p[i] < i
        j = 0
        j = p[i] if (i % 2) == 1
        t = a[j]
        a[j] = a[i]
        a[i] = t

        p[i] = p[i] + 1
        i = 1

        blk.call a
      else
        p[i] = 0
        i = i + 1
      end
    end
  end
end

class Integer
  def prime?
    return false if self < 2
    return true if self == 2
    2.upto(self**(0.5)) do |i|
      return false if self % i == 0
    end
    return true
  end
end

@results = []
7.downto(2) do |n|
  (1..n).map{|i| i.to_s}.reverse.permutates do |i|
    @results << i.join.to_i if i.join.to_i.prime?
  end
end
puts @results.max