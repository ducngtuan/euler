permut = []

def permutate(list)
  if list.size < 2
    yield list
  else
    list.each do |element|
      permutate(list.select{|e| e != element}) do |permutation|
        yield [element] + permutation
      end
    end
  end
end

permutate([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) {|perm| permut << perm}
puts permut[999_999]