n = gets.to_i
w = n.times.map{gets.chomp}

bool = true

bool = false if w.uniq.size != n

bfr_str = w[0][-1]
(0...n).each do |i|
  next if i == 0
  if w[i][0] != bfr_str
    bool = false
    break
  end
  bfr_str = w[i][-1]
end

puts (bool ? "Yes" : "No")