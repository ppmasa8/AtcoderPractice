n=gets.to_i
la=n.times.map{gets.split.map(&:to_i)}
a=la.each.map{|elem| elem[1..-1] }
p a.uniq.size
