n = gets.to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i
c = gets.split.map &:to_i

hash = Hash.new(0)
cnt=0

c.each do |ci|
  d = b[ci-1]
  hash[d] += 1
end

a.each do |ai|
  cnt += hash[ai]
end

puts cnt