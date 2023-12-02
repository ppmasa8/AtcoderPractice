n, l = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

p a.map{|b| b >= l }.count(true)
