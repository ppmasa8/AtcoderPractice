x,a,d,n=gets.split.map(&:to_i)
b=a+d*(n-1)
if (a-x)*(b-x)>=0
  min=[(x-a).abs,(x-b).abs].min
elsif d==0
  min=(x-a).abs
else
  d=d.abs
  e=(x-a)%d
  min=[e,d-e].min
end
puts min
