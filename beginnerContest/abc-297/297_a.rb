n,d=gets.split.map(&:to_i)
t=gets.split.map(&:to_i)
(0...t.size-1).each do |i|
  if t[i+1] - t[i] <= d
    puts t[i+1]
  	exit
  end
end
puts -1
