n,x=gets.split.map &:to_i
a=gets.split.map &:to_i
num=a.size
puts (a.sum-num/2 <= x ? "Yes" : "No")
