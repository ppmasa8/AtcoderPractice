N,D,H =gets.split.map &:to_i
dh = N.times.map {gets.split.map(&:to_f)}

list=[0]

dh.each do |d,h|
  list << H - ((H-h) * D / (D-d))
end

puts list.max