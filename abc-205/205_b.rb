n = gets.to_i
a = gets.split.map &:to_i

list = []
(1..n).each {|i| list << i }

a.sort!

puts (a == list ? "Yes" : "No")