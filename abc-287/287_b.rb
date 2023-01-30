n,m=gets.split.map(&:to_i)
s=n.times.map{gets.chomp}
t=m.times.map{gets.chomp}
cnt=0
s.each do |ss|
  t.each do |tt|
    if ss[-3..-1] == tt
      cnt += 1
      break
    end
  end
end
puts cnt

