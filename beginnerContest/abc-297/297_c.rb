h,w=gets.split.map(&:to_i)
s=h.times.map{gets.chomp}
res=[]
s.each do |str|
  res << str.gsub(/TT/, 'PC')
end
puts res

