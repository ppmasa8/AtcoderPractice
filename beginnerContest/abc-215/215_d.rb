require "prime"
n,m=gets.split.map &:to_i; a=gets.split.map &:to_i
a.delete_if{|i| i == 1 }; hash = {}
a.each{|j| Prime.prime_division(j).each{|prime, y| hash[prime] = true}}
temp = (0..m).to_a
hash.keys.each{|x|
    i = 1
    while x * i <= m
        temp[x*i] = 0
        i += 1
    end
}
temp.delete_if{|i| i.zero? }
puts temp.size
puts temp