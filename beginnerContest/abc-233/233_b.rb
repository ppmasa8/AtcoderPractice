l,r=gets.split.map(&:to_i)
s=gets.chomp
puts s[0,l-1] + s[l-1,r-l+1].reverse + s[r,s.size-1]
