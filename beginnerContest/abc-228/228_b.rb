n,x=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
arr=Array.new(n){false}
arr[x-1]=true
while
  x=a[x-1]
  break if arr[x-1]
  arr[x-1]=true
end
puts arr.count(true)

