n=gets.to_i
xy=n.times.map{gets.split.map(&:to_i)}
arr=[]
xy.combination(2).to_a.each do |a, b|
  arr << Math.sqrt((a[0]-b[0])**2 + (a[1]-b[1])**2)
end
puts arr.max
