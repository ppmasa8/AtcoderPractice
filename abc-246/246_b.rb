a, b = gets.split.map(&:to_i)
sqrt=Math.sqrt(a*a + b*b)
puts "#{a/sqrt.to_f} #{b/sqrt.to_f}"
