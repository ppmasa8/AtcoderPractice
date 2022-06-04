N = gets.to_i

ST = []

idxes = []
N.times do |i|
    s, t = gets.split(' ')
    t = t.to_i
    ST[i] = [i,s,t]
end

a = ST.uniq{|st| st[1]}.max{|a, b| a[2] <=> b[2]}

pp a[0]+1

