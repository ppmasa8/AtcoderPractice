# 入力
h, w = gets.split.map &:to_i
c    = h.times.map{gets.chomp.chars}

# 4方向への移動ベクトル
dx = [1, 0, -1, 0]
dy = [0, 1, 0, -1]

# 探索
seen = Array.new(h){Array.new(w) { false } }
def dfs(c, h, w, seen, dx ,dy)
  seen[h][w] = true

  # 4方向を探索
  dir = 0
  while dir < 4
    new_h = h + dx[dir]
    new_w = w + dy[dir]

    # 場外や移動先が壁の場合はスルー
    next if new_h < 0 || new_h >= h || new_w < 0 || new_w >= w
    next if c[new_h][new_w] == '#'

    # 移動先が探索済みの場合
    next if seen[new_w][new_w]

    # 再帰的に探索
    dfs(c, new_h, new_w, seen, dx ,dy)

    # インクリメント
    dir += 1
  end
end

def main(c, h, w, seen, dx, dy)

  # sとgのマスを特定する
  start_h, start_w, goal_h, goal_w = 0, 0, 0, 0
  hh, ww = 0, 0
  while hh < h
    while ww < w
      if c[hh][ww] == 's'
        start_h = hh
        start_w = ww
      end
      if c[hh][ww] == 'g'
        goal_h = hh
        goal_w = ww
      end
      ww += 1
    end
    ww = 0
    hh += 1
  end

  # 探索開始
  seen = Array.new(h){Array.new(w) { false } }
  dfs(c, start_h, start_w, seen, dx ,dy)

  # 結果
  if seen[goal_h][goal_w]
    puts "Yes"
  else
    puts "No"
  end
end

main(c, h, w, seen, dx, dy)