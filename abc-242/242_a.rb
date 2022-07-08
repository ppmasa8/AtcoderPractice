a,b,c,x=gets.split.map(&:to_i)
if a >= x
  puts 1
elsif a+1 <= x && b >= x
  puts c/(b-a).to_f
else
  puts 0
end
