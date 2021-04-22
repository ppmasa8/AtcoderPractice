a, b, c, x, y = gets.split.map &:to_i

def main(a, b, c, x, y)
  normal = (a * x) + (b * y)
  min = [x, y].min
  max = [x, y].max
  w = max * 2 * c
  s = min * 2 * c
  if x > y
    t = (x - y) * a
  else
    t = (y - x) * b
  end
  [normal, s + t, w].min
end

puts main(a,b,c,x,y)