a=3.times.map{gets.chomp}
arr=["ARC", "AGC", "AHC", "ABC"]
a.each do |elm|
  arr.delete(elm)
end
puts arr
