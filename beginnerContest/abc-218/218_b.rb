p=gets.split.map(&:to_i)
arr=[]
p.each do |elm|
  arr << (96+elm).chr
end
puts arr.join
