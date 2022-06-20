s=gets.chomp.chars.sort
arr=[0,1,2,3,4,5,6,7,8,9]
s.each do |str|
  str=str.to_i
  arr.delete(str)
end
puts arr
