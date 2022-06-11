n=gets.to_i
a=(0...n).each.map{|i| [1] * (i+1)}
for i in (0...n)
  a[i][0] = 1
  a[i][i] = 1
  for j in (1...i)
    a[i][j] = a[i-1][j-1] + a[i-1][j]
  end
  puts a[i].join(" ")
end
