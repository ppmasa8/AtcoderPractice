n,k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
arr=Array.new(k){[]}
n.times do |i|
  arr[i%k] << a[i]
end
k.times do |i|
  arr[i].sort!
end
n.times do |i|
  a[i] = arr[i%k][i/k]
end
puts ( (0..(n-2)).all? {|i| a[i] <= a[i + 1] } )? "Yes" : "No"
