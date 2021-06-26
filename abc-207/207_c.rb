n=gets.to_i
l, r = [], []
ans = 0

n.times.map do |i|
  t, l[i], r[i] = gets.split.map(&:to_i)
  if t == 2
    r[i] -= 0.5
  elsif t == 3
    l[i] += 0.5
  elsif t == 4
    l[i] += 0.5
    r[i] -= 0.5
  end
end

(0...n).each do |i|
  (i+1...n).each do |j|
    ans += 1 if [l[i],l[j]].max <= [r[i],r[j]].min
  end
end

puts ans
