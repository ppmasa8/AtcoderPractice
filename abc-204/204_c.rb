n,m = gets.split.map(&:to_i)
g= Array.new(n) {[]}

m.times do
  a,b = gets.split.map(&:to_i)
  g[a-1] << b-1
end
ans = n
n.times do |i|
  seen = Array.new(n, false)
  seen[i] = true
  stack = []
  stack << i
  until stack.empty?
    g[stack.pop].each do |v|
      next if seen[v]
      seen[v] = true
      stack << v
      ans += 1
    end
  end
end
puts ans

