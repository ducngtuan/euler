puts File.open('names.txt')
  .gets.split(',').map { |name| name[1..-2] }.sort
  .each_with_index.map { |e, i| (i + 1) * e.chars.map { |c| c.ord - 64 }.inject(&:+) }
  .inject(&:+)