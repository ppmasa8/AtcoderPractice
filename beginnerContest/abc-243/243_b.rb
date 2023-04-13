n=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c,d=0,0
for i in 0...n do
  c+=1 if a[i] == b[i]
end
a.each do |elem|
  d+=1 if b.include?(elem)
end
d-=c
puts c
puts d
