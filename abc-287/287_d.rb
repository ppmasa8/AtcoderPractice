def match_or_not(a, b)
  return a=="?" || b=="?" || a==b
end

s=gets.chomp
t=gets.chomp
pre=Array.new(s.size+1){false}
suf=Array.new(t.size+1){false}
pre[0]=true
(0...t.size).each do |i|
  break if !match_or_not(s[i],t[i])
  pre[i+1]=true
end
s=s.split("").reverse.join("")
t=t.split("").reverse.join("")
suf[0]=true
(0...t.size).each do |i|
  break if !match_or_not(s[i],t[i])
  suf[i+1]=true
end
(0..t.size).each do |i|
  puts pre[i] && suf[t.size-i] ? "Yes" : "No"
end
