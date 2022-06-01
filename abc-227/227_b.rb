n=gets.to_i
s=gets.split.map(&:to_i)
arr=[]
(1..500).each{|a|(1..500).each{|b|arr<<4*a*b+3*a+3*b}}
p s.count{|c|!arr.include?(c)}
