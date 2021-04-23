require 'set'
n = gets.to_i
xy = n.times.map{gets.split.map(&:to_i)}

def setting(xy)
  set = Set.new
  xy.each do |x,y|
    set << x + y * 10000
  end
  set
end

def main(n, xy)
  ans = 0
  (0..n-2).each do |i|
    x1, y1 = xy[i]
    (i+1..n-1).each do |j|
      x2, y2 = xy[j]
      set1 = x1 - (y2 - y1) + (y1 + x2 - x1) * 10000
      set2 = x2 - (y2 - y1) + (y2 + x2 - x1) * 10000
      if setting(xy).include?(set1) && setting(xy).include?(set2)
        square = (x2 - x1)**2 + (y2 - y1)**2
        ans = [ans, square].max
      end
    end
  end
  ans
end

puts main(n, xy)