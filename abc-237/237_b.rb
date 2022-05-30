h,w=gets.split.map(&:to_i)
a=h.times.map{gets.split.map(&:to_i)}.transpose
a.each do |arr|
  puts arr.join(" ")
end
