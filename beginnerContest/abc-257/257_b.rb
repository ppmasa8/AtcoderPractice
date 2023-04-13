n,k,q=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
l=gets.split.map(&:to_i)
l.each do |li|
  next if a[li-1] == n
  next if a[li] == a[li-1]+1
  a[li-1]+=1
end
puts a.join(" ")
