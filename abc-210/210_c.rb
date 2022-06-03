n,k=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)
hash=Hash.new(0)
x=0
k.times do |i|
  x+=1 if (hash[c[i]]+=1) == 1
end

max=x
(k...n).each do |j|
  x+=1 if (hash[c[j]]+=1) == 1
  x-=1 if (hash[c[j-k]]-=1) == 0
  max=x if max<x
end
p max
