k=gets.to_i
m=sprintf("%02d",k%60)
h=k/60
puts "#{21+h}:#{m}"
