n=gets.to_i
p=gets.split.map(&:to_i)
p.unshift(0)
q=Array.new(n+1, -1)
(1..n).each do |i|
  q[p[i]] = i
end
puts q[1..-1].join(" ")
