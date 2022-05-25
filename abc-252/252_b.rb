n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
max = a.max
arr = []
a.each.with_index(1) do |elem, i|
  arr << i if elem == max
end
arr.each do |elem|
  if b.include?(elem)
    puts "Yes"
    exit
  end
end
puts "No"
