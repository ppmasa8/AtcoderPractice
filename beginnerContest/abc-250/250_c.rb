n,q=gets.split.map(&:to_i)
a=Array(0..n)
inv=Array(0..n)

(0...q).each do |_i|
  x = gets.to_i
  pos_x = inv[x]
  pos_other = pos_x + 1
  pos_other = n-1 if pos_other == n+1
  other = a[pos_other]
  a[pos_x], a[pos_other] = a[pos_other], a[pos_x]
  inv[x], inv[other] = inv[other], inv[x]
end
puts a[1..-1]

