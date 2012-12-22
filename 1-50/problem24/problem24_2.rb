def permutate(list)
  return [list] if list.size < 2
  result = []
  0.upto(list.size - 1) do |i|
    element = list.delete_at(i)
    result += permutate(list).map!{|permutation| [element] + permutation}
    list.insert(i, element)
  end
  return result
end

p permutate((0..9).to_a)[999_999]