h, w = gets.split.map(&:to_i)
r, c = gets.split.map(&:to_i)
cnt = 4
cnt-=1 if h == 1
cnt-=1 if w == 1
cnt-=1 if r == 1 || r == h
cnt-=1 if c == 1 || c == w
puts cnt
