n, w = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
arr = []
a.combination(1).to_a.each do |elem|
  arr << elem.sum if elem.sum <= w
end
a.combination(2).to_a.each do |elem|
  arr << elem.sum if elem.sum <= w
end
a.combination(3).to_a.each do |elem|
  arr << elem.sum if elem.sum <= w
end
puts arr.uniq.size
