n,q=gets.split.map &:to_i
ab = Array.new(n + 1){ [] }
n-1.times do
  a,b=gets.split.map &:to_i
  ab[a] << b
  ab[b] << a
end
road_num = Array.new(n + 1, 1000000)
que = [1, 0]
road_num[1] = 0
while que.empty?
  qs1, qs2 = que.shift, que,shift
  ab[qs1].each do |i|
    next if road_num[i] < qs2
    road_num[i] = qs2+1
    que << i << qs2+1
  end
end
q.times do
  c,d=gets.split.map &:to_i
  puts (road_num[c]-road_num[d]).abs.even? ? "Town" : "Road")
end
