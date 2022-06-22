xy=3.times.map{gets.split.map(&:to_i)}
x=xy[0][0]^xy[1][0]^xy[2][0]
y=xy[0][1]^xy[1][1]^xy[2][1]
puts "#{x} #{y}"
