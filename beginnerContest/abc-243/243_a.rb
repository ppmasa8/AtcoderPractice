v,a,b,c=gets.split.map(&:to_i)
while
  v-=a
  if v < 0
    puts "F"
    exit
  end
  v-=b
  if v < 0
    puts "M"
    exit
  end
  v-=c
  if v < 0
    puts "T"
    exit
  end
end

