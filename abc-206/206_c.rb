n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
hash = Hash.new(0)
a.each do |v|
  hash[v] += 1
end
cnt = 0
hash.each do |k,v|
  cnt += v * (n-v)
end
puts cnt / 2
