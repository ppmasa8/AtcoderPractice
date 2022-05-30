n=gets.to_i
h=gets.split.map(&:to_i)
tmp=0
h.each do |elem|
  if tmp < elem
    tmp=elem
  else
    puts tmp
    exit
  end
end
puts tmp
