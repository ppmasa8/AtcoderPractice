s=8.times.map{gets.chomp}
alp = "abcdefgh"
(0...8).each do |i|
  (0...8).each do |j|
    if s[i][j] == "*"
      col=alp[j]
      row=8-i
      puts [col,row].join
      exit
    end
  end
end
      
