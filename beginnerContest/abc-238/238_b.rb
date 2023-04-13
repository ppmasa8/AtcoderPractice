n=gets.to_i
a=gets.split.map(&:to_i)
cnt=0
res=[0]
a.each do |elem|
  cnt = (cnt + elem) % 360
  res << cnt
end
res << 360
puts res.sort.each_cons(2).map{|i, j| j - i }.max
