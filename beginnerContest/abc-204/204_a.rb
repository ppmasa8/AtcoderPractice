x,y=gets.split.map &:to_i

if x==y
  puts x
else
  z=[0,1,2]
  z.delete(x)
  z.delete(y)
  puts z
end