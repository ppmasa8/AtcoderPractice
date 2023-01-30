n,m=gets.split.map(&:to_i)
if n-1!=m
  puts "No"
  exit
end
arr=Array.new(n+1) {[]}
m.times.map{u,v=gets.split.map(&:to_i);arr[u] << v;arr[v] << u}
if arr.any? {|a| a.size > 2}
  puts "No"
  exit
end
reach=Array.new(n+1) {false}
queue=[1]
until queue.empty?
  at=queue.shift
  reach[at]=true
  arr[at].each do |to|
    next if reach[to]
    reach[to] = true
    queue << to
  end
end
# remove 0
reach.shift
puts reach.all? ? "Yes" : "No"
