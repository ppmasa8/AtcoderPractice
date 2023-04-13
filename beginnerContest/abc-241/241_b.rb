n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
puts b.all? {|elem| 
  (idx=a.index(elem)) && a.delete_at(idx) 
} ? "Yes" : "No" 

