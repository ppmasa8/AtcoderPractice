h,w=gets.split.map(&:to_i)
s=h.times.map{gets.chomp.chars}
arr=[]
s.each_with_index do |v, i|
  v.each_with_index do |w, j|
    if w == 'o'
      arr << [i, j]
    end
  end
end
puts (arr[0][0]-arr[1][0]).abs+(arr[0][1]-arr[1][1]).abs
    
