n=gets.to_i
s=n.times.map{gets.chomp}
for_cnt=0
s.each do |str|
  for_cnt += 1 if str == "For"
end
puts n/2<for_cnt ? "Yes" : "No"
