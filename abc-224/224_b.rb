h,w=gets.split.map(&:to_i)
a=h.times.map{gets.split.map(&:to_i)}
(0...h).each do |i1|
  (i1+1...h).each do |i2|
    (0...w).each do |j1|
      (j1+1...w).each do |j2|
        if a[i1][j1]+a[i2][j2]>a[i2][j1]+a[i1][j2]
          puts "No"
          exit
        end
      end
    end
  end
end
puts "Yes"
