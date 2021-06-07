# 入力
h, w = gets.split.map &:to_i
c    = h.times.map{gets.chomp.chars}

# スタック
stack = []
seen = Array.new(h) { Array.new(w) { false } }
start = []

# 始点探索
h.times do |i|
  w.times do |j|
    start = [i, j] if c[i][j] == 's'
  end
end

# 探索開始
stack.push(start)
until stack.empty?
  hh, ww = stack.pop
  seen[hh][ww] = true
  if c[hh][ww] == 'g'
    puts "Yes"
    exit
  end

  # 移動するパターン
  move = [[-1, 0], [1, 0], [0, -1], [0, 1]]
  move.each do |mh, mw|
    rh = hh + mh
    rw = ww + mw

    # 場外や移動先が壁,移動先が探索済みの場合はスルー
    next if rh < 0 || rh > h - 1 || rw < 0 || rw > w - 1
    next if c[rh][rw] == '#' || seen[rh][rw]

    stack.push([rh, rw])
  end
end

# gにたどり着けなかった場合
puts "No"