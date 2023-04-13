n = gets.to_i
a = n.times.map{gets.to_i}
a.delete(a.max)
puts a.max
