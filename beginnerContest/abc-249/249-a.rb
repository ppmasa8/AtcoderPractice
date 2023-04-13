str = gets.split.map(&:to_i)
t, a =0, 0
for i in 0...str[-1]
    t+=str[1] if i % (str[0]+str[2]) < str[0]
    a+=str[4] if i % (str[3]+str[5]) < str[3]
end
puts t == a ? "Draw" : t > a ? "Takahashi" : "Aoki"