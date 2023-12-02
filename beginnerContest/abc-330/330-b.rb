n, l, r = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
res = []

a.each do |b|
  res << [[l, b].max, r].min
end

puts res.join(" ")
