s=gets.chomp.chars
arr=[]
s.size.times do |i|
  str=s.rotate(i).join
  arr << str
end
puts arr.sort.minmax
