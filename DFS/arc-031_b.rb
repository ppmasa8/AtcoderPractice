a = 10.times.map{gets.chomp.chars}

index = []
# xの探索
(0..9).each do |i|
  (0..9).each do |j|
    index << [i, j] if a[i][j] == "x"
  end
end

# xの上下もしくは左右にoが存在するか探索
index.each do |xy|
  dx = xy[0]
  dy = xy[1]

  if a[dx-1][dy] == "o" && a[dx+1][dy] == "o" || a[dx][dy-1] == "o" && a[dx][dy+1] == "o"
    puts "YES"
    exit
  end
end

puts "NO"