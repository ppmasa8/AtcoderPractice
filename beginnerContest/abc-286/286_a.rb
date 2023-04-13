n,p,q,r,s=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
(p-1..q-1).each_with_index{|n, idx| a[n], a[r+idx-1] = a[r+idx-1], a[n]}
puts a.join(" ")
