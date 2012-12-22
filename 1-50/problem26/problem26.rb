def recurring_count(n)
  rest = [1]
  while true
    q = rest.last*10 / n
    r = rest.last*10 % n
    if q.zero?
      rest << r
      next
    end

    return 0 if r.zero?
    return rest.size - rest.index(r) if rest.include?(r)
    rest << r
  end
end

d, max = 1, 0
2.upto(999) do |i|
  count = recurring_count(i)
  d, max = i, count if max < count
end

puts "d = #{d} --- longest recurring length #{max} --- #{1.0/d}"
